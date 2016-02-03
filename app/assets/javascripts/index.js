function renderIndex(indexIdeas){
  var index = indexIdeas.map(function(idea){
    return(
      "<ul class='collection' id='idea' data-id ='"+idea.id+"'>"
      +"<li class='collection-item' contenteditable='true' id='ideaname'>"+idea.name+"</li>"
      +"<li class='collection-item' contenteditable='true' id='ideabody'>"+idea.body+"</li>"
      +"<button class='up' id="+idea.quality+">+</button><button class='down' id="+idea.quality+">-</button><li class='collection-item quality'>"+idea.quality+"</li>"
      +"<button class='btn waves-effect waves-light' type='submit' name='action' id='delete-idea'>Delete</button>"
      +"</ul>"
      )
  });
$("#index").append(index)
}
function renderPost(newIdea){

    $("#index").prepend(
      "<ul class='collection' id='idea' data-id ='"+newIdea.id+"'>"
      +"<li class='collection-item' contenteditable='true' id='ideaname'>"+newIdea.name+"</li>"
      +"<li class='collection-item' contenteditable='true' id='ideabody'>"+newIdea.body+"</li>"
      +"<button class='up' id="+newIdea.quality+">+</button><button class='down' id="+newIdea.quality+">-</button><li class='collection-item quality'>"+newIdea.quality+"</li>"
      +"<button class='btn waves-effect waves-light' type='submit' name='action' id='delete-idea'>Delete</button>"
      +"</ul>"
      )
}
