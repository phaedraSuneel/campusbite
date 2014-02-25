$(document).ready(function(){
  
  $(".search-keyword").typeahead([
    {
      name: 'Schools',
      remote: '/schools/search.json?keyword=%QUERY'
    }
  ]);

  $(".tt-dropdown-menu").click(function(){
  	console.log($(this).parent().parent().parent());
    $(this).parent().parent().parent().submit();
  });
});
