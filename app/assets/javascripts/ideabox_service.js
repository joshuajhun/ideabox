function fetchIndex(){
  $.ajax({
    type: "GET",
    url: "http://socalbros:3000/api/v1/ideas",
    success: function(indexIdeas){
      $.each(indexIdeas, function(index, ideas){
        console.log(ideas)
      })
    }
  })
}
