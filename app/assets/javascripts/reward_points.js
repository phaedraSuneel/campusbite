$(document).ready(function(){

  $('#reward-points-table').dataTable( {

    "processing": true,
    "serverSide": true,
    "ajax": {
      "url": "/admin/reward_points",
      "type": "GET"
    } 
  });

  $(document).on('click', '#reward-points-table tbody a', function(){
    window.location=$(this).attr('src');
  });

});