var supports_Records = function() {

  var oTable = $('#supports-table').dataTable( {
    "processing": true,
    "serverSide": true,
    "ajax": {
        "url": "/admin/support_forms",
        "type": "GET"
    }
  });

  $(document).on('click', '#supports-table tbody a', function(){
    window.location=$(this).attr('src');
  });
}