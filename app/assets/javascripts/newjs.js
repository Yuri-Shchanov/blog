var main = function(){
  $('.abcsort').click(function(){
   document.cookie = 'sort = abc';
    $.ajax({
      url: 'articles',
      success: function(html){
      $("body").html(html);
      }
    });
  });
  $('.timesort').click(function(){
    document.cookie = 'sort = time';
    $.ajax({
      url:'articles',
      success: function(html){
      $("body").html(html);
      }
    });
  });
}
$(document).ready(main);