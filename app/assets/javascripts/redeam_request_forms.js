var redeam_requests_Records = function() {

  var oTable = $('#redeam_requests-table').dataTable( {
    "processing": true,
    "serverSide": true,
    "ajax": {
        "url": "/admin/redeam_request_forms",
        "type": "GET"
    }
  });

  $(document).on('click', '#redeam_requests-table tbody a', function(){
    window.location=$(this).attr('src');
  });
}