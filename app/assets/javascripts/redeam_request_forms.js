var redeam_requests_Records = function() {

  var oTable = $('#redeam_requests-table').dataTable( {
    "processing": true,
    "serverSide": true,
    "ajax": {
        "url": "/admin/redeam_request_forms",
        "type": "GET"
    }
  });
}