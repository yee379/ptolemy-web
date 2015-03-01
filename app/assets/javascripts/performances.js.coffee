# default colour scales

grey = '#c2c2c2'
green = '#c4df9b'
orange = '#fdc68a'
red = '#f7977a'

constrain_num = (num,min,max) ->
  if isNaN(num)
    return undefined
  else if num > max
    return max
  else if num < min
    return min
  num

percent_tricolour = d3.scale.threshold().domain( [0,10,100] ).range( [ grey, green, orange, red ] )
@percent_colour_scale = (num) -> 
  if constrain_num(num,10,100) then percent_tricolour(num) else grey
( exports ? this ).percent_colour_scale= percent_colour_scale
bw_tricolour = d3.scale.threshold().domain( [0,250000000,500000000] ).range( [ grey, red, orange, green ] )
@bw_colour_scale = (num) -> 
  if constrain_num(num,0,500000000) then bw_tricolour(num) else grey
( exports ? this ).bw_colour_scale= bw_colour_scale

  
# colour based on fraction: 0=good, <0.4=warn, 1=error
fraction_tricolour = d3.scale.threshold().domain( [0,0.4,1.0] ).range( [ grey, green, orange, red ] )
@fraction_colour_scale = (num) -> 
  if constrain_num(num,0,1.0) then @fraction_tricolour(num) else grey
( exports ? this ).fraction_colour_scale= fraction_colour_scale


# colour by state: 0=bad, 1=good, 2=other
state_tricolour = d3.scale.threshold().domain( [0,1,2] ).range( [ grey, red, green, orange ] )
@state_colour_scale = (num) -> 
  if constrain_num(num,0,2) then state_tricolour(num) else grey
( exports ? this ).state_colour_scale= state_colour_scale


@format_id = (i) ->
  i.replace(/\./g,'-').replace(/\//g,'_')




# # https://gist.github.com/mattheworiordan/1084831
# _.rateLimit = (func, rate, async) ->
#   queue = []
#   timeOutRef = false
#   currentlyEmptyingQueue = false
#   emptyQueue = ->
#     if queue.length
#       currentlyEmptyingQueue = true
#       _.delay (->
#         if async
#           _.defer ->
#             queue.shift().call()
# 
#         else
#           queue.shift().call()
#         emptyQueue()
#       ), rate
#     else
#       currentlyEmptyingQueue = false
# 
#   ->
#     # get arguments into an array
#     args = _.map(arguments, (e) -> 
#       e
#     )
#     # call apply so that we can pass in arguments as parameters as opposed to an array
#     queue.push _.bind.apply(this, [func, this].concat(args)) 
#     emptyQueue()  unless currentlyEmptyingQueue
# 
# 
# class Measurement extends Backbone.Model
#   defaults:
#     id: undefined
#     val: undefined
# 
# class Measurements extends Backbone.Collection
#   model: Measurement
#   initialize: (model,options) ->
#     if options.metric
#       @metric = options.metric
#     if options.latest
#       @latest = options.latest
#     if options.period
#       @period = options.period
#     @init_options(options)
#   init_options: (options) ->
#     options
#   url_postpend: ->
#     u = ''
#     if @period?
#       u = u + 'period=' + @period
#     else if @latest?
#       u = u + 'latest=true'
#     '?' + u
#   url: -> 
#     '/stats.json/' + @metric + @url_postpend()
#   parse: (data,xhr) ->
#     # parse a standard graphite/carbon output
#     if _.size(data) == 1
#       return _(data[0]['datapoints']).map( (d) ->
#         m = {}
#         m['id'] = new Date(0)
#         m['id'].setUTCSeconds( d[1] )
#         m['val'] = d[0]
#         # console.log m
#         m
#       )
#     undefined
#   fetch: (options = {}) ->
#     console.log 'fetching ' + @url()
#     options.fetch = false
#     options.timeout = 3000
#     super( options )
#   latest: () ->
#     # return the latest non null Measurement
#     # no reverse iteration in underscore?
#     # n = n if n else 1
#     for i in [ _.size(@) - 1 .. 0 ] by -1
#       # console.log @.models[i].get('val')
#       if @.models[i].get('val') then return @.models[i]
#     undefined
#     
# class MetricMeasurements extends Measurements
# ( exports ? this ).MetricMeasurements = MetricMeasurements 
#     
# class EndToEndMeasurements extends Measurements
#   init_options: (options) ->
#     if options.source
#       # @source = @reverseFqdn( options.source )
#       @source = options.source
#     if options.target
#       # @target = @reverseFqdn( options.target )
#       @target = options.target
#     if options.tool
#       @tool = options.tool
#     # if options.metric
#     #   @metric = options.metric
#     # if options.latest
#     #   @latest = options.latest
#     # if options.period
#     #   @period = options.period
#   reverseFqdn: (name) ->
#     name.split('.').reverse().join('.')
#   url: ->
#     @measurement_id = 'network.kpi.wan.source.' + @source + '.target.' + @target + '.' + @tool + '.' + @metric
#     '/stats.json/' + @measurement_id + @url_postpend()
# ( exports ? this ).EndToEndMeasurements = EndToEndMeasurements 
#   
# class MeasurementsSet extends Backbone.Collection
#   constructor: ->
#     @collections = []
#     
#   sources: () ->
#     a = []
#     # console.log @collections
#     for k,v in @collections
#       # console.log k
#       a.push k
#     a
#   targets: () ->
#     a = []
#     for k in @collections
#       for i in @collections[k]
#         a.push i unless i in a
#     a
#   add: (c) ->
#     # c.on( 'all', (e) ->
#     #   console.log e
#     # )
#     c.on( 'sync', (d) =>
#       # console.log 'recalculating summary'
#       r =
#         mean: 0
#         variance: 0
#         stdev: 0
#         min: 0
#         max: 0
#         sum: 0
#         count: 0
#         latest: null
#       t = d.length
#       m = undefined
#       s = 0
#       l = t
#       while l--
#         # console.log d.models[l].get('val')
#         if d.models[l].get('val')? # '?' is important!
#           # console.log '  added'
#           v = d.models[l].get('val')
#           r.latest = v
#           s += v
#           if r.min == null or v < r.min
#             r.min = v
#           if r.max == null or v > r.max
#             r.max = v
#         else
#           t = t - 1
#       r.sum = s
#       r.count = t
#       m = r.mean = s / t
#       l = d.length
#       s = 0
#       while l--
#         if d.models[l].get('val')?
#           s += Math.pow(d.models[l].get('val') - m, 2)
#       r.stdev = Math.sqrt(r.variance = s / t)
#       r.stdevOnMean = r.stdev / Math.sqrt(t)
#       # console.log 'calc: ' + JSON.stringify r
#       d.summary = r
# 
#       @collections.push d
# 
#       # add summary information to this set
#       r =
#         mean: 0
#         variance: 0
#         stdev: 0
#         sum:  0
#         min: null
#         max: null
#         count: 0
#       r.count = @collections.length
#       s = 0
#       for c in @collections
#         unless isNaN( c.summary.mean )
#           # console.log @summary.sum + ', ' + c.summary.mean
#           r.sum = r.sum + c.summary.mean
#           if r.min == null or c.summary.min < r.min
#             r.min = c.summary.min 
#           if r.max == null or c.summary.max > r.max
#             r.max = c.summary.max
#         else
#           r.count -= 1
#       r.mean = r.sum / r.count
#       for c in @collections
#         unless isNaN( c.summary.mean )
#           s += Math.pow(c.summary.mean - r.mean, 2 )
#       r.stdev = Math.sqrt( r.variance = s / r.count )
#       r.stdevOnMean = r.stdev / Math.sqrt(r.count)
#       @summary = r
# 
#       # follow
#       # console.log 'triggering reset'
#       @trigger 'refresh' 
#     )
#     # c.on( 'change', => @trigger 'change' )
# ( exports ? this).MeasurementsSet = MeasurementsSet 
#     
# class SetView extends Backbone.View
#   tagName: 'div'
#   initialize: ->
#     _.bindAll @
#     self = @
# 
#     @options.period = @options.period || null
#     
#     @options.refresh_interval = @options.refresh_interval * 1000 || 0
#     @init_options()
# 
#     # setup datastructures for d3 and backbone
#     @dataset = new MeasurementsSet()
# 
#     rate_limited_fetch_metric = _.rateLimit( self.fetch_metric, 100 )
#     rate_limited_fetch_endtoend = _.rateLimit( self.fetch_endtoend, 100 )
# 
#     # construct based on viewset hash
#     if @options.viewset.type == 'EndToEndMeasurements'
#       @sources = [] # global array of dicts
#       @targets = []
#       sources = [] # local array of strings
#       targets = []
#       for source, tmp of @options.viewset.hosts
#         unless source in sources
#           sources.push source
#           @sources.push { 'name': source, 'index': null }
#         for target, tmp of @options.viewset.hosts[source]
#           unless target in targets
#             targets.push target
#             @targets.push { 'name': target, 'index': null }
#           
#           # create the options for the measurement
#           opt =
#               source: source
#               target: target
#               tool: @options.viewset.tool
#               metric: @options.viewset.metric
#               latest: @options.latest
#           if @options.period?
#             delete opt['latest']
#             opt['period'] = @options.period
#           # console.log opt
# 
#           if @options.viewset.hosts[source][target] == null
#             @options.viewset.hosts[source][target] = {}
#             # console.log 'adding ' + source + ' target ' + target 
#             @options.viewset.hosts[source][target]['to'] = new EndToEndMeasurements( null, opt )
#             # @options.viewset.hosts[source][target]['to'].fetch()
#             # @dataset.add @options.viewset.hosts[source][target]['to']
#             rate_limited_fetch_endtoend( source, target, 'to' )
# 
#           # add opposite directions?
#           if @options.viewset.bidirectional?
#             opt['source'] = target
#             opt['target'] = source
#             @options.viewset.hosts[source][target]['fm'] = new EndToEndMeasurements( null, opt )
#             # @options.viewset.hosts[source][target]['fm'].fetch()
#             # @dataset.add @options.viewset.hosts[source][target]['fm']
#             rate_limited_fetch_endtoend( source, target, 'fm' )
# 
#       # console.log @sources
#       # console.log @targets
# 
#     else if @options.viewset.type == 'MetricMeasurements'
#       @options.viewset.measurements = {}
#       for i in @options.viewset.metrics
#         @options.viewset.measurements[i] = new MetricMeasurements( null,
#           metric: i
#           period: @options.period || null
#         )
#         # console.log @options.viewset.measurements[i]
#         rate_limited_fetch_metric( i )
#         # @fetch_metric(i)
#         # @dataset.add @options.viewset.measurements[i]
#     
#     
#     @create()
#     # event hooks
#     # @dataset.on( 'all', (e) ->
#     #   console.log e
#     # )
#     @dataset.on( 'refresh', @render )
#     # @dataset.on( 'change', @render )
#     # @dataset.on( 'add', @render )
# 
#     # trigger auto refresh
#     if @options.refresh_interval > 0
#       setTimeout( setInterval( self.fetch_all, self.options.refresh_interval ), Math.random() *  self.options.refresh_interval )
# 
# 
#   # close: () ->
#   #   # cleanup zombies! http://lostechies.com/derickbailey/2011/09/15/zombies-run-managing-page-transitions-in-backbone-apps/
#   #   @.remove()
#   #   @.unbind()
#   #   if @.onClose?
#   #     @.onClose()
#   #     
#   # on_close: () ->
#   #   @dataset.unbind( "change", @render() )
# 
#   fetch_endtoend: (source,target,dir) ->
#     @options.viewset.hosts[source][target][dir].fetch(
#       error:
#         () ->
#           console.log 'failure! ' + source + ', ' + target + ', ' + dir 
#     )
#     @dataset.add @options.viewset.hosts[source][target][dir]
# 
#   fetch_metric: (i) ->
#     @options.viewset.measurements[i].fetch( 
#       # success:
#       #   () ->
#       #     console.log 'success! ' + i
#       error:
#         () -> 
#           console.log 'failure! ' + i
#     )
#     @dataset.add @options.viewset.measurements[i]
# 
#   fetch_all: () ->
#     # just fetch all registered
#     # TODO: rate limit fetch these
#     console.log 'updating'
#     for d in @dataset.collections
#       # console.log d
#       d.fetch()
# 
#   init_options: () ->
#     # d3 array of coords to polygon factory
#     @path = d3.svg.line()
#       .x (d) ->
#         return d.x
#       .y (d) ->
#         return d.y
#       .interpolate( "linear" )
# 
#     unless 'xoffset' of @options
#       @options.xoffset = 4
#     unless 'yoffset' of @options
#       @options.yoffset = 4
# 
#     # add a graphic to represent state
#     unless 'colour_by' of @options
#        @options.colour_by = 'stdevOnMean'
#     unless 'latest' of @options
#       @options.latest = true
# 
#     unless 'sorted' of @options
#       @options.sorted = true
#     
#   alias: (d) ->
#     if @options.viewset.alias? and @options.viewset.alias[d.name]?
#       return @options.viewset.alias[d.name]
#     d.name
# 
#   create: ->
#     # console.log 'creating...'
#     @viz = {}
#     @viz.el = d3.select(@el).append("svg")
#       .attr("height", @options.height)
#       .attr("width", @options.width)
#       .attr("class","domain_box")
#       .append("g")
#       .attr("transform", "translate(" + 0 + "," + 0 + ")");
# 
#     # @viz.el.append("rect")
#     #   .attr("class", "background")
#     #   .attr("height", @options.height)
#     #   .attr("width", @options.width)
# 
#     @viz.colour_map = d3.scale.linear()
#       .domain([@options.bottom_threshold,@options.top_threshold])
#       .range([@options.bottom_colour,@options.top_colour])
#     @
# 
#   format_number: (n,s) ->
#     return parseFloat(n).toFixed(s).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",")
# 
#   render: ->
#     console.log 'rendering...'
#     viz = @viz
#     
#     # set d3
#     box = viz.el.selectAll("g")
#       .data( @options.collections )
#     
#     b = box.enter()
#       .append("g")
#     b
#       .append("rect")
#         .attr('width', @options.box_size)
#         .attr('height', @options.box_size)
#         .attr('stroke','white')
#         .attr('stroke-width',8)
#         .attr('stroke-linecap','round')
#         .attr( 'x', 0 )
#         .attr( 'y', (d,i) ->
#           i*@options.box_size
#         )
#         .style( 'fill', (d) ->
#           c = 'grey'
#           if d.summary.stdevOnMean >= 0
#             c = viz.colour_map( d.summary.stdevOnMean ) 
#           c
#         )
#     b
#       .append('text')
#         .attr('x', 20 )
#         .attr('y', (d,i) ->
#           (i*@options.box_size) - 10 + @options.box_size
#         )
#         .text( (d) ->
#           d.summary.mean.toFixed(2) + "±" + d.summary.stdevOnMean.toFixed(2) + ': ' + d.source + '→' + d.target
#         )
#         .style( 'grey' )
#         
# ( exports ? this ).SetView= SetView
#     
# 
# class SummaryView extends SetView
#   
#   render: () ->
#     # console.log 'rendering...'
#     self = @
#     viz = @viz
#     
#     # console.log @dataset.summary
#     canvas = viz.el.selectAll("g.d3cell")
#       .data( [ @dataset.summary ] )
# 
#     # container for each measurement view
#     box = canvas.enter()
#       .append("rect")
#         .attr( "width", self.options.box_size )
#         .attr( "height", self.options.box_size )
#         .style( 'fill', (d) ->
#           # console.log d
#           c = 'lightgrey'
#           unless isNaN(d[self.options.colour_by])
#             c = viz.colour_map( d[self.options.colour_by] ) 
#           c )
#         .append('title')
#           .text( (d) ->
#             self.format_number(d.mean,2) + "±" + self.format_number(d.stdevOnMean,2) )
# 
# ( exports ? this).SummaryView = SummaryView
# 

# class GaugeView extends SetView
#   
#   init_options: () ->
#     @options.size = @options.size * 0.9
#     @options.radius = @options.size * 0.97 / 2;
#     @options.cx = @options.size / 2;
#     @options.cy = @options.size / 2;
# 
#     @options.min = @options.min || 0; 
#     @options.max = @options.max || 100; 
#     @options.range = @options.max - @options.min;
# 
#     @options.majorTicks = @options.majorTicks || 5;
#     @options.minorTicks = @options.minorTicks || 2;
# 
#     @options.greenColor   = @options.greenColor || "#109618";
#     @options.yellowColor = @options.yellowColor || "#FF9900";
#     @options.redColor   = @options.redColor || "#DC3912";
#   
#     @options.redZones = @options.redZones || [ { from: 90, to: 100 } ]
#     @options.yellowZones = @options.yellowZones || [ { from: 80, to: 90 } ]
#     @options.greenZones = @options.greenZones || []
# 
#     @options.pointer_transition_time = @options.pointer_transition_time || 1000
#     @options.value_suffix = @options.value_suffix || ''
#       
#   create: ->
# 
#     @body = d3.select(@el)
#       .append("svg:svg")
#         .attr("class", "gauge")
#         .attr("width", @options.size)
#         .attr("height", @options.size)
#     
#     if @options.on
#       # console.log @options.on
#       for e of @options.on
#         # console.log e
#         @body.on( e, @options.on[e] )
# 
#     @body.append("svg:circle")
#         .attr("cx", @options.cx)
#         .attr("cy", @options.cy)
#         .attr("r", @options.radius)
#         .style("fill", "#ccc")
#         .style("stroke", "#000")
#         .style("stroke-width", "0.5px")
# 
#     @body.append("svg:circle")
#         .attr("cx", @options.cx)
#         .attr("cy", @options.cy)
#         .attr("r", 0.9 * @options.radius)
#         .style("fill", "#fff")
#         .style("stroke", "#e0e0e0")
#         .style("stroke-width", "2px")
# 
#     for d in @options.greenZones
#       @drawBand(d.from, d.to, @options.greenColor)
#     for d in @options.yellowZones
#       @drawBand(d.from, d.to, @options.yellowColor);
#     for d in @options.redZones
#       @drawBand(d.from, d.to, @options.redColor);
# 
#     if @options.label
#       fontSize = Math.round(@options.size / 9);
#       @body.append("svg:text")
#         .attr("x", @options.cx)
#         .attr("y", @options.cy / 2 + fontSize / 2)
#         .attr("dy", fontSize / 2)
#         .attr("text-anchor", "middle")
#         .text(@options.label)
#         .style("font-size", fontSize + "px")
#         .style("fill", "#333")
#         .style("stroke-width", "0px")
# 
#     fontSize = Math.round(@options.size / 16)
#     majorDelta = @options.range / (@options.majorTicks - 1)
# 
#     major = @options.min
#     while major <= @options.max
#       minorDelta = majorDelta / @options.minorTicks
#       
#       minor = major + minorDelta
#       while minor < Math.min(major + majorDelta, @options.max)
#         point1 = @valueToPoint(minor, 0.75);
#         point2 = @valueToPoint(minor, 0.85);
# 
#         @body.append("svg:line")
#           .attr("x1", point1.x)
#           .attr("y1", point1.y)
#           .attr("x2", point2.x)
#           .attr("y2", point2.y)
#           .style("stroke", "#666")
#           .style("stroke-width", "1px");
# 
#         minor += minorDelta
# 
#       point1 = @valueToPoint(major, 0.7);
#       point2 = @valueToPoint(major, 0.85);  
# 
#       @body.append("svg:line")
#         .attr("x1", point1.x)
#         .attr("y1", point1.y)
#         .attr("x2", point2.x)
#         .attr("y2", point2.y)
#         .style("stroke", "#333")
#         .style("stroke-width", "2px");
# 
#       if major == @options.min or major == @options.max
#         point = @valueToPoint(major, 0.63);
#         @body.append("svg:text")
#           .attr("x", point.x)
#           .attr("y", point.y)
#           .attr("dy", fontSize / 3)
#           .attr("text-anchor", major == @options.min ? "start" : "end")
#           .text(major)
#           .style("font-size", fontSize + "px")
#           .style("fill", "#333")
#           .style("stroke-width", "0px");
# 
#       major += majorDelta
# 
#     pointerContainer = @body.append("svg:g").attr("class", "pointerContainer");
#     @drawPointer(0);
#     pointerContainer.append("svg:circle")
#       .attr("cx", @options.cx)
#       .attr("cy", @options.cy)
#       .attr("r", 0.12 * @options.radius)
#       .style("fill", "#4684EE")
#       .style("stroke", "#666")
#       .style("opacity", 1);
# 
#   drawBand: (start, end, color) ->
#     if (0 >= end - start)
#       return
# 
#     self = @
# 
#     @body.append("svg:path")
#       .style("fill", color)
#       .attr("d", d3.svg.arc()
#         .startAngle(@valueToRadians(start))
#         .endAngle(@valueToRadians(end))
#         .innerRadius(0.65 * @options.radius)
#         .outerRadius(0.85 * @options.radius))
#       .attr("transform", ->
#         return "translate(" + self.options.cx + ", " + self.options.cy + ") rotate(270)"
#       )
#       
#   drawPointer: (value) ->
#     
#     delta = @options.range / 13;
# 
#     head = @valueToPoint(value, 0.85);
#     head1 = @valueToPoint(value - delta, 0.12);
#     head2 = @valueToPoint(value + delta, 0.12);
# 
#     tailValue = value -  (@options.range * (1/(270/360)) / 2);
#     tail = @valueToPoint(tailValue, 0.28);
#     tail1 = @valueToPoint(tailValue - delta, 0.12);
#     tail2 = @valueToPoint(tailValue + delta, 0.12);
# 
#     data = [head, head1, tail2, tail, tail1, head2, head];
# 
#     line = d3.svg.line()
#       .x( (d) ->
#         return d.x
#       )
#       .y( (d) ->
#         return d.y
#       )
#       .interpolate("basis");
# 
#     pointerContainer = @body.select(".pointerContainer");  
#     pointer = pointerContainer.selectAll("path").data([data])
# 
#     pointer.enter()
#       .append("svg:path")
#         .attr("d", line)
#         .style("fill", "#dc3912")
#         .style("stroke", "#c63310")
#         .style("fill-opacity", 0.7)
# 
#     pointer.transition()
#       .attr("d", line) 
#       #.ease("linear")
#       .duration(@options.pointer_transition_time);
# 
#     fontSize = Math.round(@options.size / 10);
#     pointerContainer.selectAll("text")
#       .data([value])
#         .text( (d) -> 
#           Math.round(d)
#         )
#       .enter()
#         .append("svg:text")
#           .attr("x", @options.cx)
#           .attr("y", @options.size - @options.cy / 4 - fontSize)
#           .attr("dy", fontSize / 2)
#           .attr("text-anchor", "middle")
#           .text(Math.round(value) + @options.value_suffix)
#           .style("font-size", fontSize + "px")
#           .style("fill", "#000")
#           .style("stroke-width", "0px");
# 
#   render: () ->
#     value = @dataset.summary[@options.value] * 100
#     # console.log value
#     @drawPointer(value)
# 
#   valueToDegrees: (value) ->
#     return value / @options.range * 270 - 45;
# 
#   valueToRadians: (value) ->
#     return @valueToDegrees(value) * Math.PI / 180;
#   
#   valueToPoint: (value, factor) ->
#     # value can't be more than max!
#     if value > @options.redZones['to']
#       console.log 'value > max'
#       value = @options.redZones['to']
#     
#     point = 
#       x: @options.cx - @options.radius * factor * Math.cos(@valueToRadians(value)),
#       y: @options.cy - @options.radius * factor * Math.sin(@valueToRadians(value))
#     return point
#     
# ( exports ? this ).GaugeView= GaugeView
# 
# 
# 
# class MatrixView extends SetView
# 
#   triangle: ( size, up=true ) ->
#     if up
#       return [
#         { x: 0, y: 0 },
#         { x: size, y: 0 },
#         { x: size, y: size }
#       ]
#     else
#       return [
#         { x: 0, y: 0 },
#         { x: size, y: size },
#         { x: 0, y: size } 
#       ]
#         
#   x: (n) ->
#     return n * @options.box_size
#   y: (n) ->
#     return n * @options.box_size
# 
#   sort_by_name: (l) ->
#     a = []
#     b = {}
#     for s in l
#       a.push( s.name )
#     # console.log a
#     if @options.viewset.sorted?
#       a.sort()
#     for s in l
#       s.index = a.indexOf(s.name)
#       # console.log s.name + ' 0> ' + l.index
#       b[s.name] = s.index
#     b
#     
#   update_dataset: () ->
#     # get coords for each links
#     self = @
#     src = @sort_by_name( @sources )
#     tar = @sort_by_name( @targets )    
#     # console.log ''
#     # console.log src
#     # console.log tar
#     for d in self.dataset.collections
#       # console.log d.source + ' -> ' + d.target
#       d.x = tar[d.target] 
#       d.y = src[d.source]
#       d.z = false
#       # console.log ' 1) ' + d.x + ', ' + d.y
#       if not d.x? and @options.viewset.bidirectional? 
#         d.x = tar[d.source]
#         d.y = src[d.target]
#         d.z = true
#         # console.log ' 2) ' + d.x + ', ' + d.y
#       else
#         d.x2 = src[d.target]
#         d.y2 = tar[d.source]
#         d.z2 = true
#     true
# 
#   opposite_measurement: (d) ->
#     # console.log 'finding opposite of ' + d.source + ' -> ' + d.target
#     for m in @dataset.collections
#       # console.log '  this: ' + m.source + ' -> ' + m.target
#       if m.source == d.target and m.target == d.source
#         # console.log '    found!'
#         return m
#     return
# 
# 
#   render: () ->
#     self = @
#     viz = @viz
#     
#     @update_dataset()
#     
#     source_labels = viz.el.selectAll('text.source')
#       .data( @sources )
#     source_labels.enter()
#       .append( 'text' )
#         .attr('class','source')
#         .text( (d) ->
#           self.alias(d)
#         )
#         .attr('x', self.options.xoffset)
#         .attr('y', (d) ->
#           self.options.yoffset + (self.options.box_size*d.index) + self.options.box_size/2
#         )
#         .attr("text-anchor", "end")
#     
#     target_labels = viz.el.selectAll('text.target')
#       .data( @targets )
#     target_labels.enter()
#       .append('text')
#         .attr('class','target')
#         .text( (d) ->
#           self.alias(d)
#         )
#         .attr("text-anchor", "start")
#         .attr('x', (d) ->
#           d.x = self.options.xoffset + (self.options.box_size*d.index) + self.options.box_size/2
#           d.x )
#         .attr('y', (d) ->
#           d.y = self.options.yoffset
#           d.y )
#         .attr("transform", (d,i) ->
#           'rotate(-90 ' + d.x + ' ' + d.y + ')')
#     
#     canvas = viz.el.selectAll("g.d3cell")
#       .data( @dataset.collections )
# 
#     # container for each measurement view
#     box = canvas.enter()
#     
#     # add polygons; we need two boxes for each
#     box
#       # draw the forward polygon
#       .append("path")
#         .attr( 'class', 'd3cell' )
#         .attr( 'transform', (d,i) ->
#           d.opposite = self.opposite_measurement( d )
#           "translate(" + (self.x(d.x)+self.options.xoffset) + ',' + (self.y(d.y)+self.options.yoffset) + ")"
#         )
#         .attr( "d", (d,i) ->
#           self.path( self.triangle(self.options.box_size, d.z) ) + 'Z'
#         )
#         .style( 'fill', (d) ->
#           c = 'lightgrey'
#           unless isNaN(d.summary[self.options.colour_by])
#             c = viz.colour_map( d.summary[self.options.colour_by] ) 
#           c
#         )
#         .attr('stroke','white')
#         .attr('stroke-width', 0.5)
#         .attr('stroke-linecap','round')
#         .on('click', (d,i) ->
#             console.log self.dataset.collections[i].measurement_id
#             window.open( '/graphs/' + self.dataset.collections[i].measurement_id )
#         )
#         .append('title')
#           .text( (d) ->
#             d.source + ' → ' + d.target + ': \n' + self.format_number(d.summary.mean,2) + "±" + self.format_number(d.summary.stdevOnMean,2)
#           )
#           
#     unless @options.viewset.bidirectional?
#       # draw the reverse polygon
#       box
#         .append("path")
#           .attr( 'class', 'd3cell' )
#           .attr( 'transform', (d,i) ->
#             "translate(" + (self.x(d.x2)+self.options.xoffset) + ',' + (self.y(d.y2)+self.options.yoffset) + ")"
#           )
#           .attr( "d", (d,i) ->
#             self.path( self.triangle(self.options.box_size, d.z2) ) + 'Z'
#           )
#           .style( 'fill', (d) ->
#             c = 'lightgrey'
#             unless isNaN(d.summary[self.options.colour_by])
#               if d.opposite
#                 c = viz.colour_map( d.opposite.summary[self.options.colour_by] ) 
#             c
#           )
#           .attr('stroke','white')
#           .attr('stroke-width', 0.5)
#           .attr('stroke-linecap','round')
#           .on('click', (d,i) ->
#             if d.opposite
#               window.open( '/graphs/' + d.opposite.measurement_id )
#           )
#           .append('title')
#             .text( (d) ->
#               if d.opposite
#                 d.opposite.source + ' → ' + d.opposite.target + ': \n' + self.format_number(d.opposite.summary.mean,2) + "±" + self.format_number(d.opposite.summary.stdevOnMean,2)
#             )
# 
#     canvas.exit()
# 
# ( exports ? this ).MatrixView = MatrixView
# 
# 
# 
# 
# 
# 
# class GridView extends SetView
# 
#   x: (n) ->
#     return n * @options.box_size
#   y: (n) ->
#     return n * @options.box_size
# 
#   update_dataset: () ->
#     x = 0
#     y = 0
#     grid_width = @options.width / @options.box_size
#     for d in @dataset.collections
#       d.x = x
#       d.y = y
#       # calc next position
#       x += 1
#       if x >= grid_width
#         y += 1
#         x = 0
#     true
# 
#   render: () ->
#     self = @
#     viz = @viz
#     
#     @update_dataset()
#     
#     canvas = viz.el.selectAll("g.d3cell")
#       .data( @dataset.collections )
# 
#     # container for each measurement view
#     box = canvas.enter()
#     box
#       .append("rect")
#         .attr( 'class', 'd3cell' )
#         .attr( 'width', @options.box_size )
#         .attr( 'height', @options.box_size )
#         .attr( 'transform', (d,i) ->
#           "translate(" + self.x(d.x) + ',' + self.y(d.y) + ")"
#         )
#         .style( 'fill', (d) ->
#           c = 'lightgrey'
#           unless isNaN(d.summary[self.options.colour_by])
#             c = viz.colour_map( d.summary[self.options.colour_by] ) 
#           c
#         )
#         .attr('stroke','white')
#         .attr('stroke-width', 0.5)
#         .attr('stroke-linecap','round')
#         .on('click', (d,i) ->
#             window.open( '/graphs/' + self.dataset.collections[i].metric )
#         )
#         .append('title')
#           .text( (d,i) ->
#             self.dataset.collections[i].metric
#           )
#     canvas.exit()
# 
# ( exports ? this ).GridView = GridView
# 
# 
