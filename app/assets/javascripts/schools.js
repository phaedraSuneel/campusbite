$(document).ready(function(){

  $(".search-keyword").typeahead([
    {
      name: 'Schools',
      remote: '/schools/search.json?keyword=%QUERY'
    }
  ]);
  $(".add.pull-right")[0].click();

  $(".tt-dropdown-menu").click(function(){
    $(this).parent().parent().parent().submit();
  });

  $(".checkout-btn-link").click(function(){
    $(".order_type").each(function(){
      if($(this).is(':checked'))
        order_type = $(this).val();
    });
    restaurant_id = $("#restaurant_id").val();
    $.ajax ({
      url:  '/carts/checkout',
      data: {order_type: order_type, restaurant_id: restaurant_id },
      success: function(data)
      {
        $(".cart-response").html(data);
      }
    });

  });

  $(".order-delivery-btn").click(function(){
    $(this).addClass("delivery-btn");
    $(this).removeClass("pick-btn");
    $(this).find("input[type=checkbox]").prop("checked", true);
    $(".order-pick-btn").removeClass("delivery-btn");
    $(".order-pick-btn").addClass("pick-btn");
    $(".order-pick-btn").find("input[type=checkbox]").prop("checked", false);
    order_type = $(this).find("input[type=checkbox]").val();
    id = $(this).data("cart")
    restaurant_id = $("#restaurant_id").val();
    $.ajax ({
      url: '/carts/update_order_type',
      data: {order_type: order_type , id: id, restaurant_id: restaurant_id},
      success: function(data)
      {
        $(".delivery-label").removeClass("hide");
        $(".delivery-charges").removeClass("hide");
      }
    });
  });

  $(".order-pick-btn").click(function(){
    $(this).addClass("delivery-btn");
    $(this).removeClass("pick-btn");
    $(this).find("input[type=checkbox]").prop("checked", true);
    $(".order-delivery-btn").removeClass("delivery-btn");
    $(".order-delivery-btn").addClass("pick-btn");
    $(".order-delivery-btn").find("input[type=checkbox]").prop("checked", false);

    order_type = $(this).find("input[type=checkbox]").val();
    id = $(this).data("cart");
    restaurant_id = $("#restaurant_id").val();
    $.ajax ({
      url: '/carts/update_order_type',
      data: {order_type: order_type , id: id, restaurant_id: restaurant_id},
      success: function(data)
      {
        $(".delivery-label").addClass("hide");
        $(".delivery-charges").addClass("hide");
      }
    });

  });

  $(".view-reciept").click(function(){
    parent = $(this).parent().parent().parent().parent().parent().find(".view-reciept-data");
    parent.toggleClass("hide");
    $(this).toggleClass("active");
  });


  $(".edit-action-link").click(function(){
    $(".change_user_information_form input[type=text]").each(function(){
      $(this).prop("disabled", false);
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

    $(".on input[type=radio]").prop("checked", true);
    $(".address_type_field").val("On Campus");



    $(".on").click(function(){
      $(".address_type_field").val("On Campus");
      $(".off-campus-portion").addClass("hide");
      $(".on-campus-potion").removeClass("hide");
      $(".on").addClass("active");
      $(".off").removeClass("active");
      $(".off input[type=radio]").prop("checked", false);
      $(".on input[type=radio]").prop("checked", true);
    });

    $(".off").click(function(){
      $(".address_type_field").val("Off Campus");
      $(".off-campus-portion").removeClass("hide");
      $(".on-campus-potion").addClass("hide");
      $(".off").addClass("active");
      $(".on").removeClass("active");
      $(".on input[type=radio]").prop("checked", false);
      $(".off input[type=radio]").prop("checked", true);
    });


   $(".school_selector select").change(function(e){
      id = $(this).val();
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

    $(".delete-card-btn").click(function(){
      r = confirm('Are you sure you want to delete this address?');
      if(r == true)
      {
        id = $(this).data("card");
        parent = $("#user_card_"+id);
        $.ajax ({
          url:  '/dashboard/delete_card',
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

    $(".printer-request").click(function(){
      print_area = $(this).parent().parent().parent();
      var html = "<HTML>\n<HEAD>\n"+
          $("head").html()+
          "\n</HEAD>\n<BODY class='row  search-container result-page order-history-page'>\n"+
          +"<div class='receipt-container'><div class='favorite-order-tabel'>"+print_area.html()+
          "</div></div>\n</BODY>\n</HTML>";
      //open new window
      var printWP = window.open("","printWebPart");
      printWP.document.open();
      //insert content
      printWP.document.write(html);
      printWP.document.close();
      //open print dialog
      printWP.print();
    });
});
