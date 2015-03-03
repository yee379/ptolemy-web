
# Graphite understands seconds since UNIX epoch.
cubism_ptolemyFormatDate = (time) ->
  Math.floor time / 1000

# Helper method for parsing graphite's raw format.
cubism_ptolemyParse = (text) ->
  i = text.indexOf("|")
  meta = text.substring(0, i)
  c = meta.lastIndexOf(",")
  b = meta.lastIndexOf(",", c - 1)
  a = meta.lastIndexOf(",", b - 1)
  start = meta.substring(a + 1, b) * 1000
  step = meta.substring(c + 1) * 1000
  # console.log("i=%s, meta=%s, c=%s, b=%s, a=%s, start=%s, step=%s: data=%o -> %o", i, meta, c,b,a, start, step, text.substring(i + 1).split(","), data );
  # the first value is always None?
  text.substring(i + 1).split(",").slice(1).map (d) ->
    +d

jQuery.extend cubism.context.prototype,
  "ptolemy": (host,cache=true) ->

    host = ""
    source = {}
    context = this
    source.metric = (expression) ->
      # console.log '  cache: %s', cache
      agg = "avg"
      metric = context.metric( (start, stop, step, callback) ->
        target = expression
        summarize = ((if not (step % 36e5) then step / 36e5 + "hour" else (if not (step % 6e4) then step / 6e4 + "min" else step / 1e3 + "sec"))) + "," + agg
        # off-by-two?
        cache = if context.options.call()['cache'] then "&cache=1" else ""
        delim = if '?' in target then '&' else '?'
        d3.text host + "/stats.raw/" + target \
            + delim \
            + "summarize=" + summarize \
            + "&keeplast=1" \
            + cache \
            + "&from=" + cubism_ptolemyFormatDate(start - 2 * step) \
            + "&until=" + cubism_ptolemyFormatDate(stop - 1000), (text) ->
          return callback(new Error("unable to load data"))  unless text
          callback null, cubism_ptolemyParse(text)
      , expression += "")

      metric.summarize = (_) ->
        sum = _
        metric

      metric

    source.toString = ->
      host

    source



class CubismView
    
  constructor: ( selector, @delay=60000, @step=300000, @delta=2 ) ->
    # @delta is the number of data points to go back if value is null
    @ctx = cubism.context()
    @id = d3.select(selector)
    @size = $(selector).width()

    @ctx
      .serverDelay(@delay)
      .clientDelay(@delay)
      .step(@step)
      .size(@size)
      
    @selector = selector
    @setup( selector )

    @server = @ctx.ptolemy()
    @metrics = []
    
    console.log 'creating ' + @type + ' cubism view at ' + selector + ', delay=' + @delay + ', step=' + @step + ', number of points=' + @size

    @
  
  setup: ( selector ) ->
    console.log 'setup..'
    @
    
  parse: ( group, device=null ) ->

    metric_ = undefined

    # create metric, or derive from name
    if device
      unless group.alias
        group.alias = group.metric
      unless group.metric.match( new RegExp(device + '$', 'g') )
        group.metric = group.metric + '/' + device
    # console.log 'metric ' + group.metric
    # support an array for metrics and collate them in some way
    if typeIsArray( group.metric )
      console.log 'array of metrics '
      # get the first item
      metrics = []
      #@server.metric(group.metric.shift())
      for m in group.metric
        # console.log ' metric ' + m
        metrics.push @server.metric( m )
      # create single metric from list
      metric_ = metrics.shift()
      # collate the rest
      collate = if group.collate then group.collate else 'add'
      for m in metrics
        metric_ = metric_[collate]( m )
    else
      # console.log 'metric ' + group.metric
      metric_ = @server.metric( group.metric )

    # deal with metric modifiers
    for i in [ 'add', 'subtract', 'multiply', 'divide' ]
      if group[i]
        # console.log typeof m[i]
        if typeof group[i] == 'string'
          # console.log '  create metric ' + group[i]
          group[i] = @server.metric( group[i] )
        # else if typeof group[i] == 'number'
        #   console.log '  is number - use constant'
        metric_ = metric_[i]( group[i] )
  
    unless group.alias
      group.alias = group.metric
    metric_.alias( group.alias )

    for i in [ 'scale', 'height', 'width', 'colours', 'url', 'meta', 'target', 'style', 'klass', 'extent', 'cache' ]
      if group[i]
        metric_[i] = group[i]
      else if @[i]
        # console.log 'setting default ' + i
        metric_[i] = @[i]

    # metric_.name = metric_.name.replace(/\//g,'_').replace(/\./g,'_')
    return metric_
    
      
  add: ( group, device=null ) ->
    these = []
    if typeIsArray( group )
      these = group
    else 
      these = [ group ]
    for g in these
      @metrics.push @parse( g, device )
    @render()
  
  render: ( d=undefined ) ->
    # filter list against the collection's meta data
    data = _.filter @metrics, (i) -> 
      ok = true
      if d
        for k,v of d
          if i['meta'][k]?
            values = i['meta'][k]
            unless typeIsArray(values)
              values = [ i['meta'][k] ]
            # console.log 'i=%s, %o', i, values
            for w in values
              unless w == v
                ok = false
            # if ok
            #   console.log "OK: %o", i
      ok

    # console.log data
    @_render()
          
    that = @
    i = @id.selectAll( '.'+that.type )
      .data( data )
    i.enter()
      .insert( 'div', '.bottom')
        .attr( 'class', (d) ->
          if d.klass.substring
            return that.type + ' ' + d.klass
          return that.type 
        )
        .call that.view()
    i.exit()
      .remove()


  _render: () ->

  destroy: () ->
    @id.selectAll('.'+@type)
      .data( @metrics )
      .remove()
    @_destroy()
    
  _destory: () ->
    console.log 'destroy'

  view: () ->
    @ctx.horizon()

  filter: (c) ->
    @render(c)
    
  
( exports ? this ).CubismView = CubismView


class TileView extends CubismView
  setup: () ->
    @type = 'tile'
    @ctx.options( { 'cache': true } )
  view: () ->
    @ctx.tile()
  _destroy: () ->
    console.log 'destroy'
( exports ? this ).TileView = TileView


class HorizonView extends CubismView
  setup: ( selector ) ->
    @type = 'horizon'
    ctx = @ctx
    @height = 50
  
    # draw the value at the pointer
    @ctx.on("focus", (i) -> 
      d3.selectAll(".value")
        .style( "right", (d) ->
          c = null
          unless i == null
            c = ctx.size() - i + "px"
          # console.log ctx.size() + ', ' + i + ' -> ' + c
          c
        )
    )

    # vertical rule on hover
    @id.append("div")
      .attr("class", "rule")
      .call( @ctx.rule() )


  _render: () ->
    # add time axis
    ctx = @ctx
    # set number of ticks for axis dependant on the display width
    ticks = parseInt( @id[0][0].clientWidth / 75 )
    @axis = @id.selectAll(".axis")
        .data(["top", "bottom"])
      .enter()
        .append("div")
        .attr("class", (d) -> 
          d + " axis"
        )
        .each( (d) -> 
          d3.select(@)
            .call( ctx.axis().ticks(ticks).orient(d) )
    )

  _destroy: () ->
    @id.selectAll(".axis")
      .data(["top", "bottom"])
      .remove()

  view: () ->
    @ctx.horizon()
      
( exports ? this ).HorizonView= HorizonView



class GaugeView extends CubismView
  setup: ( selector ) ->
    @type = 'gauge'
  view: () ->
    @ctx.gauge()
( exports ? this ).GaugeView = GaugeView


class ColourisorView extends CubismView
  setup: ( selector ) ->
    @type = 'colourisor'
  view: () ->
    @ctx.colourisor()
    # .delta(@delta)
( exports ? this ).ColourisorView= ColourisorView

