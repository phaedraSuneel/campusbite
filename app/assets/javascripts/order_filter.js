 $.fn.dataTable.ext.search.push(
    function( settings, data, dataIndex ) {
        var min = $('.from-range').val();
        var max = $('.to-range').val();


        var age = data[1] || 0; // use data for the age column

        if ( ( min == '' && max == '' ) ||
             ( min == '' && age <= max ) ||
             ( min <= age && '' == max ) ||
             ( min <= age && age <= max ) )
        {
            return true;
        }
        return false;
    }
);

 $(document).ready(function(event) {    
    
  var table = $(".datatable_orders").DataTable();
  
  $(".datatable_orders thead th.select-field").each( function ( i ) {
    var i = $(this).index();
    var select = $('<select><option value=""></option></select>')
        .appendTo( $(this).empty() )
        .on( 'change', function () {
            table.column( i )
                .search( $(this).val() )
                .draw();
        } );

    table.column( $(this).index() ).data().unique().sort().each( function ( d, j ) {
        select.append( '<option value="'+d+'">'+d+'</option>' )
    });
  });

  $('.datatable_orders thead th.input-field').each( function () {
        var title = $(this).text();
        $(this).html( '<input type="text" placeholder="'+title+'" />' );
    } );

  $('.datatable_orders thead th.range-field').each( function () {
        var title = $(this).text();
        $(this).html( '<input type="text" placeholder="From" class="from-range datetime-picker" /> - <input type="text" placeholder="To" class="datetime-picker to-range" />' );

        $('.from-range, .to-range').keyup( function() {
          table.draw();
        } );

        $(".from-range").click();
        $('.datatable_orders thead th').first().click();

    } );



  $(".datatable_orders thead th.input-field input").on( 'keyup change', function () {
        table
            .column( $(this).parent().index()+':visible' )
            .search( this.value )
            .draw();
    } );

    $(".datetime-picker").datetimepicker();


  $(".datatable_reports").dataTable();

});
