$(document).ready(function(){

  var id =  parseInt($('.user-transitions').data("user"));


  $('#reward-points-table').dataTable( {

    "processing": true,
    "serverSide": true,
    "ajax": {
      "url": "/admin/reward_points",
      "type": "GET"
    } 
  });

  $('#transition-table').dataTable( {
    "processing": true,
    "serverSide": true,
    "searching": false,
    "ordering":  false,
    "ajax": {
      "url": "/admin/reward_points/"+id,
      "type": "GET"
    } 
  });

 

  $(document).on('click', '#reward-points-table tbody a', function(){
    window.location=$(this).attr('src');
  });

});