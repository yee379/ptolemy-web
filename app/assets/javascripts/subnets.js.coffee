  

class @D3SunBurstPane
  
  constructor: ( div ) ->
    w = $(div).width()
    h = $(div).height()  

    console.log 'create d3 tree w=' + w + ', h=' + h

    @LABEL_MIN_ANGLE = 0.01
    @PADDING = 2
    @RADIUS = Math.max(w,h) * 0.8 / 2
    
    @X = d3.scale.linear()
      .range([0, 2 * Math.PI])
    @Y = d3.scale.pow()
      .exponent(1.3)
      .domain([0, 1])
      .range([0, @RADIUS])
    @TRANSITION_TIME = 750

    @VIS = d3.select( div )
      .append("svg")
        .attr("width", w + @PADDING * 2)
        .attr("height", h + @PADDING * 2)
      .append("g")
        .attr("transform", "translate(" + [w/2 + @PADDING, h/2 + @PADDING] + ")" )

    @PARTITION = d3.layout.partition()
      .sort(null)
      .value( (d) -> 
        # size according to netmask
        Math.pow( 2, Math.min( 32 - 20, 32 - d.content.split('/')[1] ) )
      )

    that = @    
    @ARC = d3.svg.arc()
      .startAngle (d) ->
        s = Math.max 0, Math.min(2 * Math.PI, that.X(d.x))
        d._tmp = s
        s
      .endAngle (d) ->
        e = Math.max 0, Math.min(2 * Math.PI, that.X(d.x + d.dx))
        d.arc_angle = Math.abs(d._tmp - e)
        e
      .innerRadius (d) ->
        Math.max 0, if d.y then that.Y(d.y) else d.y
      .outerRadius (d) ->
        Math.max 0, that.Y(d.y + d.dy)

    @path = `undefined`

    @DATA = {}

    # create colourisor
    @COLOURISOR = new ColourisorView( div, @delay=300000, @step=300000 )
    tricolour= d3.scale.threshold().domain( [0,0.4,0.6] ).range( [ '#c2c2c2', '#c4df9b', '#fdc68a', '#f7977a' ] )
    @COLOUR_SCALE = (num) -> 
      if isNaN(num) then '#c2c2c2' else if num > 0.6 then '#f7977a' else tricolour(num)



  fetch: (uri) =>
    that = @
    $.ajax
      url: uri
      dataType: 'json'
      success: (d) =>
        console.log 'loaded ' + uri     
        that.DATA = d
        that.draw()

  max_y: (d) =>
    if d.children then return Math.max.apply(Math, d.children.map(@max_y)) else return d.y + d.dy


  arc_tween: (d) =>
    that = @
    my = @max_y(d)
    xd = d3.interpolate( that.X.domain(), [d.x, d.x + d.dx])
    yd = d3.interpolate( that.Y.domain(), [d.y, my])
    yr = d3.interpolate( that.Y.range(), [(if d.y then 20 else 0), @RADIUS] )
    (d) ->
      (t) ->
        that.X.domain xd(t)
        that.Y.domain(yd(t)).range yr(t)
        that.ARC d

  # http://www.w3.org/WAI/ER/WD-AERT/#color-contrast
  brightness: (rgb) ->
    rgb.r * .299 + rgb.g * .587 + rgb.b * .114

  random_colour: (d) ->
    letters = "0123456789ABCDEF".split("")
    c = "#"
    i = 0
    while i < 6
      c += letters[Math.round(Math.random() * 15)]
      i++
    d.colour = c # set
    c

  colour: (d) =>
    if d.children
      # There is a maximum of two children!
      colours = d.children.map(@colour)
      a = d3.hsl(colours[0])
      b = d3.hsl(colours[1])
      # L*a*b* might be better here...
      # console.log 'colour ' + d.name + " = " + a + "/" + b
      return d3.hsl((a.h + b.h) / 2, a.s * 1.2, a.l / 1.2)
    d.colour or @random_color

  draw: =>
    console.log 'drawing'

    that = @

    nodes = @PARTITION.nodes( @DATA )
    that.path = @VIS.selectAll("path").data(nodes)

    # draw slices
    that.path.enter().append("path")
      .attr "id", (d,i) ->
        # assign colouring of nodes
        if d.content
          that.COLOURISOR.add
            metric: 'subnet.count/'+d.content 
            divide: Math.pow( 2, Math.min( 32 - 20, 32 - d.content.split('/')[1] ) )
            target: '#'+d.name
            scale: that.COLOUR_SCALE
        # TODO deal with non-leaf nodes
        d.name
      .attr( "d", that.ARC )
      .attr( "fill-rule", "evenodd" )
      .style( "fill", 'darkgray' )
      .style( 'stroke-width', '8px' )
      .style( 'stroke', '#fff3')
      .on( "click", @click )
      .on( "mouseover", (d) ->
        if d.content
          console.log d.content + ' -> size ' + d.value
      )

    that.text = @VIS.selectAll("text").data( nodes )
    textEnter = that.text.enter().append( "text" )
      .style "fill-opacity", (d) ->
         if d.arc_angle < that.LABEL_MIN_ANGLE then return 0 else return 1
      # .style "fill", (d) ->
      #   if that.brightness(d3.rgb(d.colour)) < 175 then return "#eee" else return "#000"
      .style( 'fill', 'black' )
      .attr "text-anchor", (d) ->
        if that.X(d.x + d.dx / 2) > Math.PI then return "end" else return "start"
      .attr( "dy", ".2em" )
      .attr "transform", (d) -> 
        m = ( d.name || "" ).split( " " ).length > 1
        a = that.X(d.x + d.dx / 2) * 180 / Math.PI - 90
        r = a + ( m ? -.5 : 0 )
        "rotate(" + r + ")translate(" + (that.Y(d.y) + that.PADDING) + ")rotate(" + ((if a > 90 then -180 else 0)) + ")"
      .on( "click", @click )

    textEnter.append("tspan")
      .attr("x",0)
      .text (d) ->
        # console.log 'text ' + d.name
        if d.depth then return d.name.split(" ")[0] else return ""
      
    textEnter.append("tspan")
      .attr("x", 0)
      .attr("dy", "1em")
      .text (d) ->
        if d.depth then return d.name.split(" ")[1] || "" else return ""
  
  isParentOf: (p, c) =>
    that = @
    return true  if p is c
    if p.children
      return p.children.some (d) ->
        that.isParentOf d, c
    false
  
  
  click: (d) =>
    console.log 'clicked on ' + d.name + ', angle ' + d.angle
    that = @
    that.path.transition()
      .duration( that.TRANSITION_TIME )
      .attrTween( "d", that.arc_tween(d) )

    # Somewhat of a hack as we rely on arcTween updating the scales.
    that.text
      .style "visibility", (e) ->
        if that.isParentOf(d, e) then return null else return d3.select(this).style("visibility") 
      .transition()
      .duration( that.TRANSITION_TIME )
      .attrTween "text-anchor", (d) ->
        ->
          if that.X(d.x + d.dx / 2) > Math.PI then return "end" else return "start"
      .attrTween "transform", (d) ->
        m = (d.name or "").split(" ").length > 1
        ->
          a = that.X(d.x + d.dx / 2) * 180 / Math.PI - 90
          r = a + ((if m then -.5 else 0))
          "rotate(" + r + ")translate(" + (that.Y(d.y) + that.PADDING) + ")rotate(" + ((if a > 90 then -180 else 0)) + ")"
      .style "fill-opacity", (e) ->
        if that.isParentOf(d, e) then return 1 else return 0
      .each "end", (e) ->
        d3.select(this)
          .style "visibility", (e) ->
            if that.isParentOf(d, e)
              # console.log( 'e ' + e.name + ' ' + e.arc_angle )
              if e.arc_angle > that.LABEL_MIN_ANGLE then return null
            return "hidden"
