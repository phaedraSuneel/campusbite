var contactus_Records = function() {

  $('#contactus-table').dataTable( {
    "processing": true,
    "serverSide": true,
    "ajax": {
        "url": "/admin/contact_us_forms",
        "type": "GET"
    }
  });

  $(document).on('click', '#contactus-table tbody a', function(){
    window.location=$(this).attr('src');
  });
}