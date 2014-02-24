$(document).ready(function(){
  $(".search-keyword").keyup(function(){
    if($(this).val().length >= 3){
      var keyword = $(this).val();
      $.ajax ({
        url:  '/schools/search',
        data: {keyword: keyword },
        success: function(data)
        {
          $(".result").html(data);
        }
      });
    }
  });

  $('.result-list li').click(function(e){
    console.log("clicked")
    var selected = $(this).text();
    console.log(selected);
    $('.search-keyword').val(selected);
  });

});