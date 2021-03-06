$(document).ready(function(){

  var nowDate = new Date();
  var today = new Date(nowDate.getFullYear(), nowDate.getMonth(), nowDate.getDate(), 0, 0, 0, 0);
  $(".order_request_field").datetimepicker({
    startDate: today
  });

  $('.star').rating();
  $('.star-read').rating({readOnly: true});

  $(".back-restaurant-link, .favorite_btn").popover({
    placement: 'top',
    html: true
  });


	$(".add_more_property_link").click(function(e){
		e.preventDefault();
		parent = $(this).parent().parent().find(".property-field");
		length = parent.find('input').length/2;
		$.ajax ({
        url:  '/menu_items/property_field',
        data: {length: length },
        success: function(data)
        {
          parent.append(data);
        }
     });
	});

	$(".radio-controls label input").change(function(e){
		e.preventDefault();
		text = $(this).val();
		length = 0
		parent = $(this).parent().parent().find(".property-field");
		add_more_link = $(this).parent().parent().find(".add_more_property_link");
		if(text == 1)
    {
    	$.ajax ({
        url:  '/menu_items/property_field',
        data: {length: length },
        success: function(data)
        {
          parent.append(data);
          add_more_link.removeClass("hide");
        }
      });
    }
    else
    {
    	parent.html("");
    	add_more_link.addClass("hide");
    }
  });

  $(".restaurant_selector select").change(function(e){
    id = $(this).val();
    category_content = $(this).parent().parent().find(".menu-category-selector");
    $.ajax ({
      url:  'category_field',
      data: {id: id },
      success: function(data)
      {
        category_content.html(data);
      }
    });
  });

  $(".add_sub_addon").click(function(e){
    sub_add_content = $(this).parent().find(".sub-addon");
    length = sub_add_content.find('input').length;
    $(".Add-on-label").removeClass("hide");
    $.ajax ({
      url:  'sub_addon_field',
      data: {length: length },
      success: function(data)
      {
        sub_add_content.append(data);
      }
    });
  });

  $(".quantity-field").change(function(){
      quantity =  parseInt($(this).val());
      price = ($(this).parent().parent().parent().find("span").data("price"));
      new_price = (price * quantity).toFixed(2);
      text =  "$" + new_price
      $(this).parent().parent().parent().find("span").text(text);
  });

  $(".category-selector select").change(function(e){
    window.location.hash = $(this).val();
  });

  $(".collaper").click(function(e) {
    collapse = $(this).parent().parent().parent().find(".panel-collapse");
    console.log(collapse);
    if(collapse.hasClass("in") == false )
      $(this).text("-");
    else
      $(this).text("+");
  });

  $(".main-search-form input").change(function(){
    child = $(this).is(':checked');
    parent = $(this).parent();
    if(child){
      parent.addClass("checked");
    }
    else{
      parent.removeClass("checked");
    }
  });

  $(".main-search-form input").each(function(){
    child = $(this).is(':checked');
    parent = $(this).parent();
    if(child){
      parent.addClass("checked");
    }
    else{
      parent.removeClass("checked");
    }
  });

  $(".search-botton .delivery").click(function(e){
    $(this).addClass("checked");
    $(".search-botton .pickup").removeClass("checked");
    $(this).find("input[type=checkbox]").prop("checked", true);
    $(".search-botton .pickup").find("input[type=checkbox]").prop("checked", false)
  });

  $(".search-botton .pickup").click(function(e){
    $(this).addClass("checked");
    $(".search-botton .delivery").removeClass("checked");
    $(this).find("input[type=checkbox]").prop("checked", true);
    $(".search-botton .delivery").find("input[type=checkbox]").prop("checked", false)
  });

  $(".restaurant-category a").click(function()
    {
      category_id = $(this).data("id");
      keyword = $(".query").val();
      parent = $(this).parent();
      $.ajax ({
        url:  '/welcome/restaurant_search',
        data: {keyword: keyword, category_id: category_id },
        success: function(data)
        {
          $(".chooses li").each(function()
          {
            $(this).removeClass("active");
          });
          parent.addClass("active");
          $(".restaurants-result").html(data);
        }
      });
    });

    $(".advance-search-form input").change(function(){
      radio_input = $(this).val()
      keyword = $(".query").val();
      $.ajax ({
        url:  '/welcome/restaurant_search',
        data: {keyword: keyword, input: radio_input },
        success: function(data)
        {
          $(".chooses li").each(function()
          {
            $(this).removeClass("active");
          });
          $(".chooses li.all").addClass("active");
          $(".restaurants-result").html(data);
          $(this).checked = false;
        }
      });
    });

    $(".search-restaurant").click(function(e){
      e.preventDefault();
      radio_input = $(this).parent.find("input[type='text']").val();
      keyword = $(".query").val();
      $.ajax ({
        url:  '/welcome/restaurant_search',
        data: {keyword: keyword, input: radio_input },
        success: function(data)
        {
          $(".restaurants-result").html(data);
          $(this).checked = false;
        }
      });
    });
    $(".edit-order-link").click(function(){
      $(".asap-text").remove();
      $(".order_request_field").attr("disabled", false);
      $(".order_request_field").css("border", "2px inset");
    });

    $(".plus-quantiy").click(function(){
      quantity_area =  $(this).parent().find(".quantity");
      id = quantity_area.data("cart");
      restaurant_id = $("#restaurant_id").val();
      quantity = parseFloat(quantity_area.text());
      quantity ++;
      quantity_area.text(quantity);
      $.ajax ({
        url:  '/carts/update_cart_item_quantity',
        data: {id: id, quantity: quantity, restaurant_id: restaurant_id },
        success: function(data)
        {
          quantity_area.text(quantity);
        }
      });
    });

    $(".minus-quantiy").click(function(){
      quantity_area =  $(this).parent().parent().find(".quantity");
      id = quantity_area.data("cart");
      restaurant_id = $("#restaurant_id").val();
      quantity = parseFloat(quantity_area.text());
      if(quantity!=1)
        quantity --;
      $.ajax ({
        url:  '/carts/update_cart_item_quantity',
        data: {id: id, quantity: quantity, restaurant_id: restaurant_id },
        success: function(data)
        {
          quantity_area.text(quantity);
        }
      });
    });

    $(".remove-cart-item-link").click(function(){
      id = $(this).parent().parent().data("cart");
      restaurant_id = $("#restaurant_id").val();
      parent = $("#cart_" + id);
      $.ajax ({
        url:  '/carts/delete_cart_item',
        data: {id: id, restaurant_id: restaurant_id}
      });
    });

    $(".review-submit-btn").click(function(){
      $(".review-form").submit();
    });

    $(".resturant-heading .flash-link").click(function(){
      $(".resturant-heading .flash-message").addClass("hide");
    });

    $(".menu-error-sumbit").click(function(e){
      $(".menu-error-form").submit();
    });
});