var subscribers_Records = function() {

  $('#subscriber-table').dataTable( {
    "processing": true,
    "serverSide": true,
    "ajax": {
        "url": "/admin/subscriber_forms",
        "type": "GET"
    } 
  });

}