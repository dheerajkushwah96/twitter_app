$(document).ready(function () {
  $(".post_like").on('click', function () {
    var tweet_id = $(this).attr("data-id");
    var value = $(this).attr("data-value")
    _this = $(this)
    $.ajax({
      type: "POST",
      url: "/tweets/"+tweet_id,
      dataType: "json",
      data: { like: { liked: value }},
      success: function(response){
          if(response.liked == true){
            _this.children("span").addClass("like");
          }
          else{
            _this.children("span").addClass("unlike");
          }
      }
    });
  })
})