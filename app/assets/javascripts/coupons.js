$(document).ready(function(){
	$('#coupons-table').dataTable( {
    "processing": true,
    "serverSide": true,
    "ajax": {
        "url": "/admin/coupons",
        "type": "GET"
    } 
  });

  $(document).on('click', '#coupons-table tbody a', function(){
    window.location=$(this).attr('src'); 
  });
});