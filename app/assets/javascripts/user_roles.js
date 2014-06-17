$(document).ready(function(){
	$('#user-roles-tabel').dataTable( {
    "processing": true,
    "serverSide": true,
    "ajax": {
        "url": "/admin/user_roles",
        "type": "GET"
    } 
  });

  $(document).on('click', '#user-roles-tabel tbody a', function(){
    window.location=$(this).attr('src'); 
  });
});