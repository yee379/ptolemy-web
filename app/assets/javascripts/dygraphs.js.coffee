class @DygraphTimePane
  
  constructor: ( @div, @labels ) ->
    $(@div).addClass( 'dygraph' )
    $(@labels).addClass( 'dygraph-label' )
    @DATA = []
    
  load: (url,period='-1h') ->

    DATA = @DATA
    _series = []
    _div = @div.replace( /^#/, '' )
    _label = @labels.replace( /^#/, '' )

    this_url = url
    append = 'from='+period
    if url.indexOf('?') == -1
      this_url = this_url + '?' + append
    else
      this_url = this_url + '&' + append
    console.log this_url
    
    $.ajax
      url:  this_url
      dataType: 'json'

      success: (d) ->

        _data = {}
        s = 0 # series
        while s < d.length
          name = d[s]["target"]
          _series.push name
          i = 0 # data
          while i < d[s]["datapoints"].length
            t = d[s]["datapoints"][i][1]
            # console.log( JSON.stringify(d[s]['datapoints'][i][0]) )
            _data[t] = {}  unless _data.hasOwnProperty(t)
            _data[t][name] = d[s]["datapoints"][i][0]
            i++
          s++
    
        # remap it to something dygraph can understand (stupid time assumptions)
        times = []
        for k of _data
          times.push k  if _data.hasOwnProperty(k)
        times.sort()
        for i of times
          vals = []
          t = times[i]
          e = new Date(0)
          e.setUTCSeconds t # epoch
          vals.push e
          for n of _series
            s = _series[n]
            v = null
            v = _data[t][s] if _data[t].hasOwnProperty(s)
            vals.push v
          # add
          DATA.push vals
    
        # update
        labels = ["time"]
        for n of _series
          labels.push _series[n]

        # console.log( JSON.stringify(opts['labels']) )
        # console.log "DIV " + _div
        new Dygraph( document.getElementById(_div), DATA,
          labelsDiv: document.getElementById(_label)
          labels: labels
          drawPoints: false
          showRoller: true
          labelsSeparateLines: false
          labelsKMB: true
          animatedZooms: true
          highlightCircleSize: 2
          connectSeparatedPoints: true
          digitsAfterDecimal: 3
          # sigFigs: 6
          maxNumberWidth: 9
          stackedGraph: false
          highlightSeriesOpts:
            pointSize: 3
            highlightCircleSize: 4
            strokeWidth: 2
            strokeBorderWidth: 5
          colors: d3.scale.category10().range()
        )
          
