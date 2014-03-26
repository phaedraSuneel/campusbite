$(document).ready(function(){

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
      url:  '/addons/category_field',
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
      url:  '/addons/sub_addon_field',
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
      new_price = price * quantity; 
      text =  "$" + new_price 
      $(this).parent().parent().parent().find("span").text(text);
  });

  $(".category-selector select").change(function(e){ 
    value = $(this).val();
    if(value == "all")
    {  
      $(".daily-special-container").find(".panel-collapse").each(function(){ 
        $(this).addClass("in");
      });
    }
    else 
    {
      $(".daily-special-container").find(".panel-collapse").each(function(){ 
        $(this).removeClass("in");
      });
      $(".daily-special-container").find("#" + value).addClass("in");
    }
    change_collapse_sign();
  });

  $(".collaper").click(function(e) {
    change_collapse_sign();
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

  $(".delivery, .pickup").click(function(){
    input =  $(this).find("input[type=checkbox]");
    if(input.is(':checked'))
    {
      input.prop('checked', false);
      $(this).removeClass("checked");
    }  
    else
    {
      input.prop('checked', true);
      $(this).addClass("checked");
    }  
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
    })
});

function change_collapse_sign(){
  $(".collaper").each(function(){
    collapse = $(this).parent().parent().parent().find(".panel-collapse");
    if(collapse.hasClass("in") == false )
      $(this).text("-");
    else
      $(this).text("+");
  });
}
