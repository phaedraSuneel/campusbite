$(document).ready(function(){

  var id =  parseInt($('.school-buildings').data("school"));

  $('#locations-table').dataTable( {

    "processing": true,
    "serverSide": true,
    "ajax": {
      "url": "/admin/schools",
      "type": "GET"
    } 
  });

  $('#buildings-table').dataTable( {
    "processing": true,
    "serverSide": true,
    "ajax": {
      "url": "/admin/schools/"+id,
      "type": "GET"
    } 
  });

  $(document).on('click', '#locations-table tbody a', function(){
    window.location=$(this).attr('src'); 
  });
  
});