#= require turbolinks

#= require jquery
#= require jquery_ujs

#= require dataTables/jquery.dataTables
#= require jquery.dataTables.facets

#= require rails-timeago
#= require dygraph-combined

#= require underscore
#= require d3
#= require cubism.v1
#= require jquery.splitter

#= require twitter/bootstrap

#= require_tree .


# helper javascript
@typeIsArray = Array.isArray || ( value ) -> return {}.toString.call( value ) is '[object Array]'  

  
# overload the datatables sorting
jQuery.extend jQuery.fn.dataTableExt.oSort,
  "ip-pre": (a) ->
    m = a.split(".")
    console.log a 
    x = 0
    for i in [0..m.length-1]
      j = m.length - i
      d = parseInt( '1' + Array(j*3).join('0') )
      m[i] = parseInt(m[i]) + 1
      n = d * m[i]
      x = x + n
      console.log '  ' + m[i] + ' (' + x + ')'
    parseInt(x) || 1000000000
    
  "ip-asc": (a, b) ->
    (if (a < b) then -1 else ((if (a > b) then 1 else 0)))
  "ip-desc": (a, b) ->
    (if (a < b) then 1 else ((if (a > b) then -1 else 0)))

jQuery.extend jQuery.fn.dataTableExt.oSort,
  "physical-port-pre": (a) ->
    m = []
    n = a.split(/(\/|\-)/g)
    for i in [0..n.length-1]
      if i % 2 == 0 and n[i].match(/\d+/)
        m.push n[i]
    if m.length == 0
      m.push '0'
    # console.log "a: " + a + ", m: " + m
    m[0] = m[0].replace( /^\D+/, '' )
    # parse digits
    x = 0
    for i in [0..m.length-1]
      j = m.length - i - 1
      d = parseInt( '1' + Array(i*5).join('0') )
      m[j] = parseInt(m[j]) + 1
      n = d * m[j]
      x = x + n
      # console.log '  i=' + i + ', j=' + j + ', m[j]=' + m[j] + ", d=" + d + " -> " + n + " (" + x + ")"

    # parse type
    t = a.replace(/\d/g,'').replace(/(\-|\/)/g,'')
    # console.log a + ' -> ' + t + ' / ' + m + ' (' + x + ')'
    unless t.match( /(Eth|Fa|Gi|Te)/ )
      x = x + 10000000000

    parseInt(x)
    
  "physical-port-asc": (a, b) ->
    (if (a < b) then -1 else ((if (a > b) then 1 else 0)))
  "physical-port-desc": (a, b) ->
    (if (a < b) then 1 else ((if (a > b) then -1 else 0)))

jQuery.extend jQuery.fn.dataTableExt.oSort,
  "seen-pre": (a) ->
    m = a.split(" ")
    # console.log "a: " + a + ", m: " + m[1] + ',' + m[2]
    c = 1
    d = 1
    u = m[1]
    
    if m[0] == 'a'
      c = 1
      u = m[1]
    else if m[0] == 'about'
      c = 0.95
      if m[1] == 'a' or m[1] == 'an'
        c = c
      else
        c = parseInt(m[1]) * c
      u = m[2]
    else if m[0] == 'less'
      c = 0.75
      u = m[3]
    else
      c = parseInt(m[0])

    if u == 'minutes' or u == 'mins' or u == 'minute'
      d = 60
    else if u == 'hours' or u == 'hour'
      d = 3600
    else if u == 'days' or u == 'day'
      d = 86400
    else if u == 'months' or u == 'month'
      d = 2592000
    
    # console.log a + ': ' + c + " = " + d
    return parseInt(c * d)
    
  "seen-asc": (a, b) ->
    (if (a < b) then -1 else ((if (a > b) then 1 else 0)))
  "seen-desc": (a, b) ->
    (if (a < b) then 1 else ((if (a > b) then -1 else 0)))


@resize_to_window = (el, w, h, mn, me, ms, mw) ->
  # _w = 0
  # if el.offset().left
  #   __w = parseInt( el.offset().left )
  #   if isNaN(__w)
  #     _w = __w
  # w = $(window).width() - parseInt(2*_w) - e - w # how to get right margin from style?
  # ds = parseInt(s)
  # ds = 50 if isNaN( ds )
  # h = $(window).height() - parseInt(el.offset().top) - ds
  # el.attr "width", w
  # el.attr "height", h
  el.css
    width:  w,
    height: h,
    "margin-left": me,
    "margin-right": mw,
    "margin-top": mn,
    "margin-bottom": ms
  # [w, h]

@_fill_window = ( el, n,e,s,w,footer ) ->
  
  dn = parseInt(el.offset().top)
  de = parseInt(el.offset().left)
  dw = parseInt(el.offset().left)

  w = $(window).width() - de - dw
  h = $(window).height() - dn - footer

  resize_to_window el, w, h, n, e, s, w
  

@fill_window = ( item, n=0, e=0, s=0, w=0 ) ->

  items = []
  if typeIsArray( item )
    items = item
  else
    items.push item

  # set south to be footer height always
  footer = $('.footer').height()

  # start initial
  $.each items, (c, v) ->
    _fill_window $(v), n, e, s, w, footer
    
  # attach resize window
  $(window).on "resize", ->
    $.each items, (c, v) ->
      _fill_window $(v), n, e, s, w, footer

  return

@uri_get_options = ->
  decodeURIComponent(window.location.search.slice(1)).split("&").reduce (_reduce = (a, b) -> #Object
#String
    b = b.split("=")
    a[b[0]] = b[1]
    a
  ), {}


# determine the type of parameters to grab from the table so that we can do an action on it
@get_row_data = ( row, meta ) ->
  data = {}
  row.find('td').each( (i) ->
    # grab meta from aoItems to determine type
    m = meta[i]
    v = $(this).text()
    if m and not m.ignore == true
      data[m.param] = v
  )
  return data

@make_editable = ( row, aoMeta ) ->
  
  row.find('td').each( (i)->
    v = $(this).text()
    meta = aoMeta[i]
    if meta

      if meta.editable == true

        # cast type
        if 'type' of meta

          switch meta.type
            when 'int'
              v = parseInt( v )

            when 'boolean'
              if v == 'true'
                v = true
              else if v == 'false'
                v = false
              else
                v = null

            when 'string'
              html = $('<input type="text" class="input-small" value="' + v + '"></input>')

            when 'choice'
              # if function, then fetch it first
              choices = meta.choices
              if typeof choices == "function"
                d = get_row_data( row, aoMeta )
                console.log d
                choices = meta.choices( d )
            
              html = $('<select class="btn btn-mini">')
              matched = false
              for j in choices
                opt = $( '<option value="' + j + '">' + j + '</option>' )
                # remap
                if meta.mapping?
                  if v of meta.mapping
                    j = meta.mapping[v]
                    console.log 'remapped ' + meta.param + ' value ' + v + ' -> ' + j
                if v == j
                  matched = true
                  opt.attr('selected','selected')
                html.append( opt )
              if !matched
                html.find('option[value="unknown"]').attr('selected','selected')
            
            else
              console.log 'unknown type ' + meta.type

        # assign to td delete current contents
        $(this).empty()
        $(this).append( html )

  )  

@make_uneditable = ( row, aoMeta ) ->
  
  row.find('td').each( (i) ->
    if aoMeta[i]?
      meta = aoMeta[i]
      # console.log meta
      if meta.editable == true
        v = 'error'
        switch meta.type
          when 'choice'
            v = $(this).find('option:selected').text()
          when 'string'
            v = $(this).find('input').first().val()
          else
            console.log 'unknown meta type ' + meta.type
        $(this).empty()
        console.log 'setting ' + meta.param + ' to ' + v
        $(this).append( v )
  )
  

@editable_table = ( table, submit_function, aoMeta ) ->
  row = table.children('tbody').children('tr')
  orig = {}
  row.children('td').children('i').on( 'click', (i) ->
    r = $(this).closest('tr')
    # console.log r
    # when clicked from this mode...
    if $(this).hasClass('editable')
      orig = get_row_data( r, aoMeta )
      make_editable( r, aoMeta )
      editable_state_editing( $(this) )
    else if $(this).hasClass('editing')
      console.log 'originally...'
      console.log orig
      make_uneditable( r, aoMeta )
      submit_function( r, aoMeta, orig )
      editable_state_processing( $(this) )
    else if $(this).hasClass('processing')
      console.log 'processing...'
    else if $(this).hasClass('error')
      editable_state_editable( $(this) )
    else if $(this).hasClass('ok')
      editable_state_editable( $(this) )
    else
      console.log 'unknown editable action'
  )

@editable_state_editable = ( item ) ->
  item.removeClass()
  item.addClass( 'icon-pencil' )
  item.addClass( 'editable' )
  item.attr( 'title', 'Click to enable editing.' )
    
@editable_state_editing = ( item ) ->
  item.removeClass()
  item.addClass( 'icon-edit' )
  item.addClass( 'editing' )
  item.attr( 'title', 'Click to submit changes.' )
  
@editable_state_processing = ( item ) ->
  item.removeClass()
  item.addClass( 'icon-spin' )
  item.addClass( 'icon-refresh' )
  item.addClass( 'processing' )
  item.attr( 'title', 'Processing...' )
  
@editable_state_success = ( item ) ->
  item.removeClass()
  item.addClass( 'icon-ok' )
  item.addClass( 'ok' )
  item.removeAttr( 'title' )

@editable_state_error = ( item, msg ) ->
  item.removeClass()
  item.addClass( 'icon-warning-sign' )
  item.addClass( 'error' )
  item.attr( 'title', msg )

@pluralise = (s) ->
  if s.slice(-1) == 's' 
    s = s + 'es'
  else 
    s = s + 's'
  s
  

@delay = ( () ->
  timer = 0;
  return (callback,ms) ->
    clearTimeout(timer)
    timer = setTimeout(callback,ms)
)()
