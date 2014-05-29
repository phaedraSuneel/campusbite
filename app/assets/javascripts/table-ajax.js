  var asInitVals = new Array();

  $.fn.dataTableExt.afnFiltering.push(
    function( oSettings, aData, iDataIndex ) {
      var iMin = document.getElementById('order_total_from').value.replace("$", "") * 1;
      var iMax = document.getElementById('order_total_to').value.replace("$", "") * 1;
      var iVersion = aData[5] == "-" ? 0 : aData[5].replace("$", "")*1;

       if ( iMin == "" && iMax == "" )
        {
            return true;
        }
        else if ( iMin == "" && iVersion < iMax )
        {
            return true;
        }
        else if ( iMin < iVersion && "" == iMax )
        {
            return true;
        }
        else if ( iMin < iVersion && iVersion < iMax )
        {
            return true;
        }

        return false;
      }
  );

  $.fn.dataTableExt.afnFiltering.push(
    function( oSettings, aData, iDataIndex ) {

      var iFini = $('#order_from_date').val();
      var iFfin = $('#order_to_date').val();
      imin = iFini=="" ? "" : Date.parse(iFini);
      imax = iFfin=="" ? "" : Date.parse(iFfin);
      var idate = Date.parse(aData[1]);

        if ( imin == "" && imax == "" )
        {
            return true;
        }
        else if ( imin == "" && idate < imax )
        {
            return true;
        }
        else if ( imin < idate && "" == imax )
        {
            return true;
        }
        else if ( imin < idate && idate < imax )
        {
            return true;
        }

        return false;
      }
  );

   $(document).ready(function() {

    $(".date-picker").datetimepicker().change(function(){
      $('#order_from_date, #order_to_date').click();
    });

    var oTable = $('#all_orders_data').dataTable({  // here you can define a typical datatable settings from http://datatables.net/usage/options 
      "aLengthMenu": [
          [10, 20, 50, 100, 150, -1],
          [10, 20, 50, 100, 150, "All"] // change per page values here
      ],
      "iDisplayLength": 10, // default record count per page
      "aaSorting": [[ 1, "asc" ]] // set first column as a default sort by asc
    });

    $("thead tr.filter .select_filter").each( function ( i ) {
        var i = $(this).index();
        $(this).find('select').change( function () {
            oTable.fnFilter( $(this).val(), i );
        } );
    } );
       
    $("thead tr.filter input.search_init").keyup( function () {
        /* Filter on the column (the index) of this element */
        oTable.fnFilter( this.value, $("thead tr.filter input.search_init").index(this) );
    } );
       
 
    $("thead tr.filter input.search_init").each( function (i) {
        asInitVals[i] = this.value;
    } );
     
    $("thead tr.filter input.search_init").focus( function () {
        if ( this.className == "search_init" )
        {
            this.className = "";
            this.value = "";
        }
    } );
       
    $("thead tr.filter input.search_init").blur( function (i) {
        if ( this.value == "" )
        {
            this.className = "search_init";
            this.value = asInitVals[$("thead tr.filter input.search_init").index(this)];
        }
    } );

  } );