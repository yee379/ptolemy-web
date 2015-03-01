(function($) {
        
    $.fn.facets = function( options ) {
        
        var oTable = this;
        var oSettings = oTable.fnSettings();
        // console.log(oSettings)
        
        // keep a running tally of what is checked and what isn't
        // hhTally[ column name ][ value ] = count
        var hhTally;   
        var hIsArray = {}
        
        // which facets are currently being filtered
        // as we do no hide these items
        var hsFaceting = {}
    
        function fnCreateFacet( sName, hTally ) {
        
            console.log('creating facet for ' + sName)
            // console.log( hTally )
            var a = [];
            var ints = true;
            for (v in hTally) if (hTally.hasOwnProperty(v)) {
                a.push(v)
                if( ints && isNaN(parseInt(v)) ) {
                  ints = false;
                }
            }
            if ( ints ) {
              a = a.sort(function(a,b) { return a-b });
            } else {
              a = a.sort();
            }
            // console.log( a )
        
            // var sName = fnColumnTitle( iColumn )
            // console.log("creating facet for " + sName + ": " + a );
            var r = '';
            r += '<ul class="nav nav-list">'
            r += ' <li class="nav-header facet-header"><span class="facet-header-title">' + sName + "</span></li>"
            r += '<div class="facet-frame" id="' + sName + '">'
                r += '<div class="facet-content">'
            for ( var i=0 ; i<a.length ; i++ ){
                  r += '<li class="facet-item href">'
                    r += '<div class="facet-item-count">'+hTally[a[i]]+'</div>'
                    r += '<div class="facet-item-content">'
                      r += '<a class="facet-item-value">'+a[i]+'</a>'
                      // r += '<div class="facet-body-item-checkbox">Y</div>'
                      r += '<input class="facet-item-checkbox facet-item-checkbox-hidden" type="checkbox"></input>'
                    r += "</div>" // facet body item conent
                  r += '</li>' // item
            }
                r += '</div>' // body content
            r +=   '</div>' // frame
            r += '</ul>'
            return r;
        }        
        
        function fnColumnIndex( sName ) {
            for(var i in oSettings.aoColumns) if (oSettings.aoColumns.hasOwnProperty(i)) {
                var v = oSettings.aoColumns[i].mData.replace( /^\s+/, '' ).replace( /\s+$/, '' )
                if( v == sName ) {
                    return i
                }
            }
            return undefined;
        }

        function fnColumnTitle( iColumn ) {
            return oSettings.aoColumns[iColumn].sTitle.replace( /^\s*/, '').replace( /\s*$/, '' )
        }

        
        function fnFilterColumn( sName, asValues ) {
            var iColumn = fnColumnIndex( sName )
            // need to determine if the original is an array or string
            console.log(" array? " + hIsArray[sName] )
            var search = ''
            for( var i=0; i<asValues.length; i++ ){
              // deal with special characters that should not be considered as regex
              asValues[i] = asValues[i].replace(/([()[{*+.$^\\|?])/g, '\\$1')
            }
            if ( hIsArray[sName] !== true ) {
              // console.log( "  string: ")
              search = "^(" + asValues.join('|') + ")$";
            } else {
              // console.log( "  array: ")
              a = []
              for( var i=0; i<asValues.length; i++ ) {
                a.push( "\\s?" + asValues[i] + ",?" )
              }
              search = a.join("|")
            }
            console.log("filter column " + sName + " on column " + iColumn + ", with filter " + search  );
            oTable.fnFilter( search, iColumn, true, false );
        }


        function _fnGetTally( hh, n, s ) {
          // build tally
          if( ! hh.hasOwnProperty(n) ) {
              hh[n] = {}
          }
          if( ! hh[n].hasOwnProperty(s) ) {
              hh[n][s] = 0
          }
          hh[n][s] = hh[n][s] + 1
        }

        function fnGetTally( bFiltered ) {

            console.log("tallying data")
            // if bFiltered (default true, then get data for only the filtered set, else return entire set)
            var aiRows;
            if (typeof bFiltered == "undefined") bFiltered = true;
            if (bFiltered == true) aiRows = oSettings.aiDisplay;
            else aiRows = oSettings.aiDisplayMaster; // all row numbers
            
            // console.log(aiRows)
            // update the other facet values
            var hh = [];
            // TODO: deal with special case where no rows are visible (all shoudl be unchecked)
            
            for( var i=0; i<aiRows.length; i++ ) {
                var iRow = aiRows[i];
                var aRow = oTable.fnGetData(iRow);
                // console.log( ' ' + aRow );
                
                var s = undefined
                var n = undefined
                if ( aRow.constructor == Object ) {
                  for( var x in aRow ) {
                    n = x
                    s = aRow[x]
                    // console.log(" " + x + '->' + s)
                    if (s instanceof Array) {
                      // console.log("  array! " + x)
                      hIsArray[x] = true
                      for( var j=0; j<s.length; j++ ) {
                        // console.log("n " + n + ', s ' + s[j] + ', j ' + j )
                        _fnGetTally( hh, n, s[j] )
                      }
                    } else {
                      // console.log(" got " + n + ", " + s )
                      _fnGetTally( hh, n, s )
                    }
                  }
                } else if( aRow.constructor == Array ) {
                  for( var j=0; j<aRow.length; j++ ) {
                      s = aRow[j];
                      var n = fnColumnTitle(j)
                      // console.log( ' column (' + j + ') ' + n + ' = ' + s )
                      _fnGetTally( hh, n, s )
                  }
                }


            }
            // console.log( hh )
            return hh;
        }

        
        function fnSetItem( oItem, bFiltered, bChecked, iCount ){
          // bChecked = true | false | undefined
          // console.log(  '  fnSetItem ' + oItem.find('a').text() + ', ' + bFiltered + ", " + bChecked + ", " + iCount )
          var oCheckbox = oItem.find('.facet-item-checkbox')
          var oCount = oItem.find('.facet-item-count')

          if ( bFiltered ) {

            oItem.removeClass('facet-item-hidden')
            oCheckbox.removeClass('facet-item-checkbox-hidden')
            if( bChecked ) {
              oCheckbox.prop("checked", true)
              oItem.addClass('facet-item-selected')
            } else {
              oCheckbox.prop("checked", false)
              oItem.removeClass('facet-item-selected')
            }

          } else {
            // hide stuff this is not currently being filtered if not count
            // console.log(' recalculating item')
            oItem.removeClass('facet-item-selected');
            if( iCount == 0 || iCount === undefined ){
              oItem.addClass( 'facet-item-hidden')
            } else if ( bChecked === undefined ) {
              oCheckbox.addClass('facet-item-checkbox-hidden')
            } else {
              oItem.removeClass( 'facet-item-hidden')
            }

          }
          oCount.text( iCount )
          return
        }
        
        
        function fnUpdateFacet( sColumn ) {

          console.log("updating facet " + sColumn)
          var facet = $('.facet[for="'+sColumn+'"]')
          var bFiltered = facet.hasClass('facet-frame-selected')
          facet.find('.facet-item').each( function(i,d){

            var sValue = $(this).find('a').text()
            var oCheckbox = $(this).find('.facet-item-checkbox')
            iCount = hhTally[sColumn][sValue];

            // console.log(" updating value " + sValue + ", count " + hhTally[sColumn][sValue])
            fnSetItem( $(this), bFiltered, oCheckbox.is(':checked'), iCount )
              
          })
                          
        }
        
        function fnGetItemComponents( oItem ) {
          var oFacet = oItem.closest('.facet')
          var sColumn = oFacet.attr('for')
          var oItem = oItem.closest('.facet-item')
          var oCheckbox = oItem.find('.facet-item-checkbox')
          var sItem = oItem.find('a').text()
          // console.log( 'retrieved facet ' + sColumn + ', on item ' + sItem )
          return { 'oFacet': oFacet, 'sColumn': sColumn, 'oItem': oItem, 'oCheckbox': oCheckbox, 'sItem': sItem }
        }
        
        
        this.fnUpdateFacets = function() {
          console.log('updating all facets!')
          hhTally = fnGetTally( true )
          for( var s in hhTally ){
            fnUpdateFacet( s )
          }
        }
        
        return this.each( function () {
    
            if (!oTable.fnSettings().oFeatures.bFilter)
                return;

            hhTally = fnGetTally( false )
            // console.log( hhTally )
            
            console.log("initiating facets")
            $(".facet").each( function (i) {

                var sName = $(this).attr('for')

                // create the facet
                if ( $(this).find('ul').length == 0 ) {
                  $(this)
                      .append( fnCreateFacet( sName, hhTally[sName] ) );
                }
                // bind a select event
                $(this).children().find('.facet-item-content').each( function(i){
                  // console.log(this)
                  $(this).click( function(e,ui){
                    
                    var item = fnGetItemComponents( $(this) )
                    var bChecked = ! item['oCheckbox'].is(':checked') // set toggle
                    console.log( 'clicked on facet ' + item['sColumn'] + ', on item ' + item['sItem'] + ", checked? " + item['bChecked'] )

                    item['oFacet'].addClass('facet-frame-selected')

                    // set all items to visible
                    item['oFacet'].find('.facet-item').each( function(i,d){
                      var i = fnGetItemComponents( $(this) )
                      var k = i['oCheckbox'].is(':checked')
                      // console.log( ' ' + item['sColumn'] + ", " + i['sItem'] );
                      // console.log( hhTally[item['sColumn']] ) //[i['sItem']] )
                      fnSetItem( $(this), true, k,  hhTally[item['sColumn']][i['sItem']] )
                    })

                    console.log( 'setting item');
                    fnSetItem( item['oItem'], true, bChecked, hhTally[item['sColumn']][item['sItem']] )
                    
                    var aSelected = []
                    item['oFacet'].find('.facet-item-selected').each( function(i,d){
                      var s = $(this).find('a').text()
                      aSelected.push( s )                      
                    })
                    
                    // if nothing is selected form the list, then reset the faceting for this column
                    var bResetColumn = false
                    if ( aSelected.length == 0 ) {
                      bResetColumn = true
                      item['oFacet'].removeClass('facet-frame-selected')
                      item['oFacet'].find('.facet-item').each( function(i,d){
                        $(this).removeClass( 'facet-item-selected' )
                        aSelected.push( $(this).find('a').text() )
                      })
                    }

                    fnFilterColumn( item['sColumn'], aSelected )
                    
                    if( bResetColumn ) {
                      hhTally = fnGetTally( false )
                      // console.log('RESETING FACET for ' + item['sColumn'])
                      item['oFacet'].find('.facet-item').each( function(i,d){
                        var i = fnGetItemComponents( $(this) )
                        // var k = i['oCheckbox'].is(':checked')
                        fnSetItem( $(this), false, undefined, hhTally[i['sColumn']][i['sItem']] )
                      })
                    } else {
                      // update tally and visuals
                      hhTally = fnGetTally( true )
                    }
            
                    // update the other facets
                    for( var s in hhTally ){
                      if( s != item['sColumn'] ){
                        fnUpdateFacet( s )
                      }
                    }
                    
                  })
                })

            } ); // each
    
        } ) // return
        
    } // facets

}(jQuery));

