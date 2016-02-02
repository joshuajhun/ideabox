function renderIndex(indexIdeas){
  var ideas = indexIdeas.map(function(ideaInformation){
    return(
      "<ul>"
      +"<li>"+ideaInformation.name+"</li>"
      +"<li>"+ideaInformation.body+"</li>"
      +"<li>"+ideaInformation.quality+"</li>"

      +"</ul>"
      )
  });
  $("#index").append(ideas)
}
