var restaurant_suggestion_Records = function() {

  $('#restaurant-suggestion-table').dataTable( {

    "processing": true,
    "serverSide": true,
    "ajax": {
        "url": "/admin/restaurant_suggestion_forms",
        "type": "GET"
    } 
  });

}