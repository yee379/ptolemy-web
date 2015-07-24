class @TopologyPane

  @VIS = `undefined`
  @FORCE = `undefined`
  
  constructor: ( div, gravity=0.2, charge=-800, distance=150, strength=0.8 ) ->
    # data structures for d3
    @NODES = []
    @LINKS = []
    # keep lookup variables for nodes and links
    @by_nodes = {}
    @by_links = {}
    @drag_node = false
    @radius = d3.scale.sqrt().range([0, 12])
    that = @

    w = $(div).width()
    h = $(div).height()
    # console.log 'size w=' + w + ', h=' + h
    
    @VIS = d3.select( div )
      .append("svg:svg")
        .attr("id", "d3_force")
        .attr("class","weathermap_pane")
        .attr("width", w)
        .attr("height", h)
        .attr("pointer-events", "all")
      .append("svg:g")
        .attr("id", "d3_zoom")
        .call( d3.behavior.zoom().on( "zoom", that.zoom_and_pan ) )
        .on("dblclick.zoom", null) # disable double click to zoom
      .append("svg:g")

    @VIS.append('svg:rect')
      .attr("id", "d3_pan")
      .attr("class","weathermap_pane")
      .attr("width", w)
      .attr("height", h)
      .attr("fill", "rgba(1,1,1,0)")
    
    @FORCE = d3.layout.force()
      .gravity(gravity)
      .charge(charge)
      .linkDistance(distance)
      .linkStrength(strength)
      .size([w, h])
      .nodes(@NODES)
      .links(@LINKS)
      .on("tick", @tick)
      
    # create a colourisor for the links etc.
    @COLOURISOR = new ColourisorView( div, delay=60000, step=60000 )
    tricolour = d3.scale.linear().domain( [0,0.05,0.4,1] ).range( [ '#c4df9b', '#48D1CC', '#fdc68a', '#f7977a'] )
    @COLOUR_SCALE = (num) -> 
      if isNaN(num) then '#c2c2c2' else if num > 1 then return '#f7977a' else tricolour(num)
      
    
  zoom_and_pan: () =>
    # console.log "zoom " + d3.event.translate + ', ' + d3.event.scale
    unless @drag_node 
      @VIS.attr("transform", "translate(" + d3.event.translate + ")" + " scale(" + d3.event.scale + ")")
    return
    
  start: () =>
    @FORCE.start()
   
  stop: () =>
    @FORCE.stop()
    
  link_distance: (d) =>
    @stop()
    @FORCE.linkDistance(d)
    @start()
  
  tick: =>
    @VIS.selectAll("line.link")
      .attr("x1", (d) -> d.source.x)
      .attr("y1", (d) -> d.source.y)
      .attr("x2", (d) -> (d.source.x + d.target.x) / 2 )
      .attr("y2", (d) -> (d.source.y + d.target.y) / 2 )
    # VIS.selectAll(".link")
    #   .attr("d", function(d) {
    #     var dx = d.target.x - d.source.x,
    #       dy = d.target.y - d.source.y,
    #       dr = Math.sqrt(dx * dx + dy * dy);
    #   return "M" + d.source.x + "," + d.source.y + "A" + dr + "," + dr + " 0 0,1 " + d.target.x + "," + d.target.y;
    # })

    # non-colliding moves
    # @VIS.selectAll("g.node")
    #   .attr( "transform", (d) -> "translate(" + d.x + "," + d.y + ")" )
    # colliding moves
    @VIS.selectAll("g.node")
      .each( @collide(.2)  )
      .attr( "transform", (d) -> "translate(" + d.x + "," + d.y + ")" )
      
  collide: (alpha) =>
    q = d3.geom.quadtree(@NODES)
    that = @
    padding = 12
    return (d) ->
      r = d.size + that.radius.domain()[1] + padding
      nx1 = d.x - r
      nx2 = d.x + r
      ny1 = d.y - r
      ny2 = d.y + r
      q.visit( (quad, x1, y1, x2, y2 ) ->
        if quad.point and quad.point != d
          x = d.x - quad.point.x
          y = d.y - quad.point.y
          l = Math.sqrt( x * x + y * y )
          r = d.size + quad.point.radius + padding
        if l < r
          l = ( l - r ) / l * alpha
          d.x -= x *= l
          d.y -= y *= l
          quad.point.x += x
          quad.point.y += y
        return x1 > nx2 or x2 < nx1 or y1 > ny2 or y2 < ny1
      )

  fetch: (uri) =>

    console.log "fetching data from " + uri
    that = @

    _get_index_of_node = (name) ->
      that.by_nodes[name] if name of that.by_nodes
  
    $.ajax
      url:  uri
      dataType: 'json'
      
      success: (d) ->
        that.stop()
        $.each d.nodes, (i,v) ->
          if v.id of that.by_nodes
            console.log "node already exists " + v.id
          else
            that.by_nodes[v.id] = Object.keys(that.by_nodes).length
            # console.log "adding node " + v.id
            that.NODES.push v

        # need to map the links to index values on our nodes
        $.each d.links, (n, v) ->
          unless v.id of that.by_links
            that.by_links[v.id] = true
            # d3 geom force wants node indices
            # console.log v.source + ' -> ' + v.target
            v.source = _get_index_of_node(v.source)
            v.target = _get_index_of_node(v.target)
            
            console.log "LINK %o", v
            
            # attach a colourisor to the dataset
            for s of v.stats
              m =
                metric: v.stats[s]
                target: '#'+v.id
                scale:  that.COLOUR_SCALE
                style: 'stroke'
              that.COLOURISOR.add m 
            # console.log v
            that.LINKS.push v

        that.redraw()
        that.start() #if _repulse

  on_link_click: (d) =>
    # console.log "clicked: " + d.stats['port']
    # d.popover(
    #   content: 'blah'
    # )
    window.open d.charts['port']
    return

  on_link_mouseover: (d) =>
    console.log d

  redraw: () =>
    console.log "redrawing"
    that = @
    
    # create arrows
    # set to radius of node
    @VIS.append("svg:defs")
      .selectAll("marker")
      .data(["arrow"])
      .enter()
      .append("svg:marker")
      .attr("id", String)
      .attr("viewBox", "0 -5 10 10")
      .attr("refX", 20)
      .attr("refY", -1.5)
      .attr("markerWidth", 6)
      .attr("markerHeight", 6)
      .attr("orient", "auto")
      .append("svg:path")
      .attr "d", "M0,-5L10,0L0,5"
      
    console.log "creating links"
    # paths
    # l = @VIS.selectAll("path")
    # L = l.enter().append("svg:g").append("svg:path")
    # links
    l = @VIS.selectAll("line.link").data( @LINKS, (d) -> d.id )
    L = l.enter()
      .append("line")
        .attr("class", "link")
        .attr("id", (d) -> d.id )

    # .attr("marker-end", (d) -> "url(#arrow)" )
    L
      .style "stroke-width", (d) ->
        1 + if d.speed then d.speed * 2 / 1000 else 1
      .on "click", (d) => 
        @.on_link_click d
      .on 'mouseover', (d) => 
        @.on_link_mouseover d
  
    # create nodes
    console.log "creating nodes"
    n = @VIS.selectAll("g.node").data(@NODES, (d) -> d.id )
  
    # overload to prevent bug in d3 dragging (just @FORCE.drage)- required to update both px,py,x,y on d
    N = n.enter()
      .append("svg:g")
      .attr("class", "node")
      .call d3.behavior.drag()
        .on("dragstart", 
          (d, i) -> 
            # console.log "pinning node " + d.id
            d.fixed = true
            that.start() # if _repulse
            that.drag_node = true
        )
        .on("drag", (d, i) -> 
          d.px += d3.event.dx
          d.py += d3.event.dy
          d.x += d3.event.dx
          d.y += d3.event.dy
          that.tick()
        )
        .on("dragend", (d, i) -> 
          that.tick() 
          that.drag_node = false
        )
  
    # N.append("svg:image")
    # .attr("xlink:href", "https://d3nwyuy0nl342s.cloudfront.net/images/icons/public.png")
    # .attr("dx", 12)
    N.append("svg:circle")
      .attr("class", (d) -> "node " + d.type )
      .attr("r", (d) -> 
        (if d.size > 0 then d.size else 2)
      )
      .on("contextmenu", (d) ->
        d3.event.preventDefault()
        that.delete_node d
      )
      .on( "dblclick", (d) ->
        # console.log "unpinning node " + d.id
        d.fixed = false
        that.tick()
      )
    # text
    N.append("svg:text")
      .attr("class", "nodetext")
      .style("pointer-events", "none")
      .style("stroke", (d) ->
        (if d.fixed then "#FFDD3A" else "lightgray")
      )
      .attr("dy", ".35em")
      .text( (d) -> d.id.split('.').shift() )
      # .text( (d) -> d.id )
  
    # clear
    l.exit().remove()
    n.exit().remove()
  
    # reorder stuff so lines are always at back, not very efficient
    @VIS.selectAll("g.node, .link").sort (a, b) ->
      x = (if a.source is `undefined` then true else false)
      y = (if b.source is `undefined` then true else false)
      r = 0
      if x and not y
        r = 1
      else r = -1 if not x and y
      r
    
    # done!
    return

  dump: =>
    console.log "NODES"
    for i of @NODES
      console.log "  " + i + ": " + JSON.stringify(@NODES[i].id)
    console.log "LINKS"
    for i of @LINKS
      console.log "  " + i + ": " + JSON.stringify(@LINKS[i].id)
    
  delete_node: (d) =>
    @stop()
  
    # find associated links for node d
    to_del = []
    i = Object.keys(@LINKS).length - 1
    while i >= 0
      if @LINKS[i].source.id is d.id or @LINKS[i].target.id is d.id
        delete @by_links[@LINKS[i].id]
        to_del.push i
      i--
    # console.log("found links: " + to_del)
    i = 0
    while i < to_del.length
      n = to_del[i]
      console.log "delete link (" + n + ") " + @LINKS[n].id
      @LINKS.splice n, 1
      i++
  
    # delete the actual node
    console.log "delete node (" + @by_nodes[d.id] + ") " + d.id
    @NODES.splice @by_nodes[d.id], 1
    delete @by_nodes[d.id]

    # recalc node positions
    i = 0
    while i < Object.keys(@NODES).length
      @by_nodes[@NODES[i].id] = i
      i++

    # @dump()
    @redraw()

    @start() # if _repulse
    
  num_nodes: () =>
    @NODES.length
