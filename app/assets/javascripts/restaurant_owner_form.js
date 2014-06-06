var restaurant_owner_Records = function() {

  $('#restaurant-owner-table').dataTable( {

    "processing": true,
    "serverSide": true,
    "ajax": {
        "url": "/admin/restaurant_owner_forms",
        "type": "GET"
    } 
  });

}