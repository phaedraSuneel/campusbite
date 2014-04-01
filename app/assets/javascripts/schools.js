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
  
  $(".update-btn").click(function(){
    $(".change_user_password_form").submit();
  });

    $(".on input[type=radio]").attr("checked", true);
    $(".address_type_field").val("On Campus");

      

    $(".on").click(function(){
      $(".address_type_field").val("On Campus");
      $(".off-campus-portion").addClass("hide");
      $(".on-campus-potion").removeClass("hide");
      $(".on").addClass("active");
      $(".off").removeClass("active");
      $(".off input[type=radio]").attr("checked", false);
      $(".on input[type=radio]").attr("checked", true);
    });

    $(".off").click(function(){
      $(".address_type_field").val("Off Campus");
      $(".off-campus-portion").removeClass("hide");
      $(".on-campus-potion").addClass("hide");
      $(".off").addClass("active");
      $(".on").removeClass("active");
      $(".on input[type=radio]").attr("checked", false);
      $(".off input[type=radio]").attr("checked", true);
    });


   $(".school_selector select").change(function(e){
      id = $(this).val();
      console.log(id);
      building_content = $(".building-selector");
      $.ajax ({
        url:  '/dashboard/building_field',
        data: {id: id },
        success: function(data)
        {
          building_content.html(data);
          $(".building-selector select").addClass("Select-Campus");
        }
      });
    });  

    $(".add-new-address-btn").click(function(){
      $(".add-new-address-form").submit();
    });
    $(".edit-address-btn").click(function(){
      id = $(this).data("address");
      $("#address_form_"+id).submit();
    });

    $(".edit-review-submit-btn").click(function(){
      id = $(this).data("review");
      $("#edit_review_form_"+id).submit();
    })

    $(".new-review-submit-btn").click(function(){
      id = $(this).data("review");
      $("#review_form_"+id).submit();
    })

    $(".edit-item-submit").click(function(){
      id = $(this).data("cart");
      console.log(id);
      $("#edit_menu_item_form_"+id).submit();
    });

    $(".delete-address-btn").click(function(){
      r = confirm('Are you sure you want to delete this address?');
      if(r == true)
      {
        id = $(this).data("address");
        parent = $("#address_"+id);
        $.ajax ({
          url:  '/dashboard/delete_address',
          data: {id: id },
          success: function(data)
          {
            $(parent).remove();
          }
        });
      }
      else
       return false  
    });

    $(".delete-review-btn").click(function(){
      r = confirm('Are you sure you want to delete this review?');
      if(r == true)
      {
        id = $(this).data("review");
        parent = $("#review_"+id);
        $.ajax ({
          url:  '/dashboard/delete_review',
          data: {id: id },
          success: function(data)
          {
            $(parent).remove();
          }
        });
      }
      else
       return false  
    });
});
