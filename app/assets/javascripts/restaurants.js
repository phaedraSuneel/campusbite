$(document).ready(function(){
  $('#restaurant-tab').tab();
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

});
