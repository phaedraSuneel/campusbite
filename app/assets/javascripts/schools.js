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
    $(".order-form").submit();
  });
  
});
