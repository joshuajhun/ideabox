function renderIndex(indexIdeas){
  var ideas = indexIdeas.map(function(ideaInformation){
    return(
      "<ul class='collection'>"
      +"<li class='collection-item'>"+ideaInformation.name+"</li>"
      +"<li class='collection-item'>"+ideaInformation.body+"</li>"
      +"<li class='collection-item'>"+ideaInformation.quality+"</li>"
      +"</ul>"
      )
  });
  $("#index").append(ideas)
}
function renderPost(newIdea){
    $("#index").append(
      "<ul class='collection'>"
      +"<li class='collection-item'>"+newIdea.name+"</li>"
      +"<li class='collection-item'>"+newIdea.body+"</li>"
      +"<li class='collection-item'>"+newIdea.quality+"</li>"
      +"</ul>"
      )
}
