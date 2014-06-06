var campus_suggestion_Records = function() {

  $('#campus-suggestion-table').dataTable( {

    "processing": true,
    "serverSide": true,
    "ajax": {
        "url": "/admin/campus_suggestion_forms",
        "type": "GET"
    } 
  });

}