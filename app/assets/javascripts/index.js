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
