$(document).ready(function(){

  App.init();
  
  $(".add-group-link").click(function(e){
    e.preventDefault();
    parent = $(".group-content");
    id = parent.data('menu');
    length = parent.find('input.length').length;
    console.log(length);

    $.ajax ({
        url:  '/admin/menu/'+ id +'/menu_items/get_group',
        data: {length: length },
        success: function(data)
        {
          parent.append(data);
        }
     });
  });

  $(".add-group-item-link").on('click', function(e){
    parent = $(this).parent();
    console.log(parent);
    id = $(".group-content").data('menu');
    sub_parent = parent.find(".group-item-content");
    index = parent.find('input.length').length;
    length = sub_parent.find('input.index').length;
    $.ajax ({
      url:  '/admin/menu/'+ id +'/menu_items/get_group_item',
      data: {length: length, index: index },
      success: function(data)
      {
        sub_parent.append(data);
      }
    });
  });

  $(".add_more_property_link").click(function(e){
    e.preventDefault();
    parent = $(".radio-controls").find(".property-field");
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

  $(".remove-property-field").on( "click", function(){
    $(this).parent().parent().remove();
  });

  $(".radio-controls label input").change(function(e){

    text = $(this).val();
    length = 0;
    parent = $(".radio-controls").find(".property-field");
    add_more_link = $(".radio-controls").find(".add_more_property_link");
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
