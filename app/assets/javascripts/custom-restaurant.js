$(document).ready(function(){

  $('#restaurants-table').dataTable( {

    "processing": true,
    "serverSide": true,
    "ajax": {
      "url": "/admin/restaurants",
      "type": "GET"
    } 
  });

  $(document).on('click', '#restaurants-table tbody a', function(){
    window.location=$(this).attr('src'); 
  });
  
});