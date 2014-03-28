$(document).ready(function(){
  
  $(".search-keyword").typeahead([
    {
      name: 'Schools',
      remote: '/schools/search.json?keyword=%QUERY'
    }
  ]);
  
  $(".tt-dropdown-menu").click(function(){
    $(this).parent().parent().parent().submit();
  });

  $(".checkout-btn-link").click(function(){
    $.ajax ({
      url:  '/carts/checkout',
      success: function(data)
      {
        $(".cart-response").html(data);
      }
    });
    
  });

  $(".account-tabs").click(function(){
    $(".user-information-tab .account-tabs").each(function(){
      $(this).removeClass("active");
    });
    $(this).addClass("active");
  });

  $(".edit-action-link").click(function(){
    $(".change_user_information_form input[type=text]").each(function(){
      $(this).attr("disabled", false);
      $(this).css("background-color", "white")
    });
    $(this).hide();
    $(".save-btn").removeClass("hide");
  });

  $(".save-btn").click(function(){
    $(".change_user_information_form").submit();
  });
  
});
