$(document).ready(function(){


  $('#food-categories-table').dataTable( {

    "processing": true,
    "serverSide": true,
    "ajax": {
      "url": "/admin/restaurant_categories",
      "type": "GET"
    } 
  });

  $(document).on('click', '#food-categories-table tbody a', function(){
    window.location=$(this).attr('src'); 
  });
  
});