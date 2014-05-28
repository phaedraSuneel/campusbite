$(document).ready(function(){  
  
  $(".toggle-alert").click(function(){
    $.ajax ({
      url:  '/restaurant/dashboard/toggle_alert',
      success: function(data)
        {
          $(".toggle-alert").attr('alert',data);
          if(data=="false")
          {  
            $(".toggle-alert").find("img").attr('src','/assets/mute.png');
          }
          else
          {
            $(".toggle-alert").find("img").attr('src','/assets/un-mute.png');
          }
        }  
    });    
  });

  $(".tabs").each(function(){
    id = $(this).data("order");
    $(".order_" + id).addClass("hide"); 
    $(this).removeClass("active");  
  });
  first_order = $(".tabs.first").data("order");
  $(".order_" + first_order).removeClass("hide");
  $(".tabs.first").addClass("active");

  $(".tabs").click(function(){
    $(".tabs").each(function(){
      id = $(this).data("order");
      $(".order_" + id).addClass("hide"); 
      $(this).removeClass("active");

    });
    id = $(this).data("order");
    $(".order_" + id).removeClass("hide");
    $(this).addClass("active");
  });

});
