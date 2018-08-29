jQuery ->
  console.log("test")
  $(".new-post").on "click", ->
    $("#EditPostModal").modal();
    console.log(this)
