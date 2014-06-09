$(document).ready(function(){

  $('#customers-table').dataTable( {

    "processing": true,
    "serverSide": true,
    "ajax": {
      "url": "/admin/customers",
      "type": "GET"
    } 
  });

  $(document).on('click', '#customers-table tbody a', function(){
    window.location=$(this).attr('src');
  });

});