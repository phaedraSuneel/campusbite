var asInitVals = new Array();

$.fn.dataTableExt.afnFiltering.push(
  function( oSettings, aData, iDataIndex ) {
    var iMin = document.getElementById('order_total_from').value.replace("$", "") * 1;
    var iMax = document.getElementById('order_total_to').value.replace("$", "") * 1;
    index = $('#order_total_to').parent().index();
    var iVersion = aData[index] == "-" ? 0 : aData[index].replace("$", "")*1;

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

  var oTable = $('#all_orders_data').dataTable({
    "aaSorting": [[ 1, "asc" ]],
    "bSortCellsTop": true,
  });

  var tt = new $.fn.dataTable.TableTools(oTable);
 
  $( tt.fnContainer() ).insertBefore('div.dataTables_wrapper');
   
  $("thead tr.filter .select_filter").each( function ( i ) {
    var i = $(this).index();
    $(this).find('select').change( function () {
        oTable.fnFilter($(this).val(), i );
    });
  });

  $("thead tr.filter input.search_init").keyup( function () {
    /* Filter on the column (the index) of this element */
    var i = $(this).parent().index();
    oTable.fnFilter( $(this).val(), i );
  });

  $("thead tr.filter input.range-filter").keyup( function () {
    var i = $(this).parent().parent().index();
    $("#all_orders_data .sorting")[i].click();
    $("#all_orders_data .sorting")[i].click();
  });

  $("thead tr.filter input.date-range-filter").click( function () {
    var i = $(this).parent().index();
    $("#all_orders_data .sorting")[i].click();
    $("#all_orders_data .sorting")[i].click();
  });

  $("thead tr.filter .input_filter").each( function (i) {
    var i = $(this).index();
    asInitVals[i] = $(this).find('input').val();
  });
   
  $("thead tr.filter input.search_init").focus( function () {
    if ( this.className == "search_init" )
    {
      this.className = "";
      this.value = "";
    }
  });
     
  $("thead tr.filter input.search_init").blur( function (i) {
    if ( this.value == "" )
    {
      this.className = "search_init";
      this.value = asInitVals[$("thead tr.filter input.search_init").parent().index(this)];
    }
  });

  $(".filter-cancel").click(function(){
    
    $("#all_orders_data input, #all_orders_data select").each(function(){
      $(this).val("");
      var i = $(this).parent().index();
      oTable.fnFilter( $(this).val(), i );
    });
  });

  $(".filter-submit").click(function(){
    var sData = oTable.$('input').serialize() + oTable.$('select').serialize();
  });

  $("#all_orders_data thead tr.heading th").each(function(){
    $(this).addClass("sorting");
  });

  $("#all_orders_data thead tr.filter td").each(function(){
    $(this).removeClass("sorting");
    $(this).removeClass("sorting_asc");
  });

});