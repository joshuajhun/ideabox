function renderIndex(indexIdeas){
  var ideas = indexIdeas.map(function(ideaInformation){
    return(
      "<ul class='collection' id='idea' data-id ='"+ideaInformation.id+"'>"
      +"<li class='collection-item'>"+ideaInformation.name+"</li>"
      +"<li class='collection-item'>"+ideaInformation.body+"</li>"
      +"<li class='collection-item'>"+ideaInformation.quality+"</li>"
      +"<button class='btn waves-effect waves-light' type='submit' name='action' id='delete-idea'>Delete</button>"
      +"</ul>"
      )
  });
  $("#index").prepend(ideas)
}
function renderPost(newIdea){
    $("#index").prepend(
      "<ul class='collection' id='idea' data-id ='"+newIdea.id+"'>"
      +"<li class='collection-item'>"+newIdea.name+"</li>"
      +"<li class='collection-item'>"+newIdea.body+"</li>"
      +"<li class='collection-item'>"+newIdea.quality+"</li>"
      +"<button class='btn waves-effect waves-light' type='submit' name='action' id='delete-idea'>Delete</button>"
      +"</ul>"
      )
}
