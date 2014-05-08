$(document).ready(function(){
	$(".edit-sechedule-btn").click(function(){
    id = $(this).data("sechedule");
    $("#sechedule_form_"+id).submit();
  });
  
  $(".edit-offer-btn").click(function(){
    id = $(this).data("offer");
    $("#offer_form_"+id).submit();
  });

  $(".edit-coupon-btn").click(function(){
    id = $(this).data("coupon");
    $("#coupon_form_"+id).submit();
  });
});
