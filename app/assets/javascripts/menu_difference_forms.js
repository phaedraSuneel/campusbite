var menu_requests_Records = function() {

  var oTable = $('#menu_requests-table').dataTable( {
    "processing": true,
    "serverSide": true,
    "ajax": {
        "url": "/admin/menu_difference_forms",
        "type": "GET"
    }
  });
}