$(document).ready(function(){

  var id =  parseInt($('.restaurant-reviews').data("restaurant"));

  $('#reviews-table').dataTable( {

    "processing": true,
    "serverSide": true,
    "ajax": {
      "url": "/admin/reviews",
      "type": "GET"
    } 
  });

  $('#review-table').dataTable( {
    "processing": true,
    "serverSide": true,
    "ajax": {
      "url": "/admin/reviews/"+id,
      "type": "GET"
    }
  });

  $(document).on('click', '#reviews-table tbody a', function(){
    window.location=$(this).attr('src'); 
  });

  $(document).on('click', '#review-table tbody a', function(){
    window.location=$(this).attr('src'); 
  });
  
});