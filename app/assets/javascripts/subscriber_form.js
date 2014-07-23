var subscribers_Records = function() {

  var oTable = $('#subscriber-table').dataTable( {
    "processing": true,
    "serverSide": true,
    "ajax": {
        "url": "/admin/subscriber_forms",
        "type": "GET"
    }
  });

  $(document).on('click', '#subscriber-table tbody a', function(){
    window.location=$(this).attr('src');
  });
}