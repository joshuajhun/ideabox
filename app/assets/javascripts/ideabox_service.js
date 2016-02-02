function fetchIndex(){
  $.ajax({
    type: "GET",
    url: "http://socalbros:3000/api/v1/ideas",
    success: function(indexIdeas){
      renderIndex(indexIdeas)
    }
  })
}
