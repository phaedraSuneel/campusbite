$(document).ready(function(){
  $(".new_user_form_submit").click(function(){
    $(".new_user_form").submit();
  });

  $(".search-keyword").keyup(function(){
    if($(this).val().length >= 3){
      var keyword = $(this).val();
      $.ajax ({
        url:  '/restaurants/search',
        dataType: 'html',
        data: {keyword: keyword },
        success: function(data)
        {
          $(".result").html(data);
        }
      });
    }
  });
});