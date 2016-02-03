function renderIndex(idea){
    $("#index").append(
      "<ul class='collection' id='idea' data-id ='"+idea.id+"'>"
      +"<li class='collection-item' contenteditable='true' id='ideaname'>"+idea.name+"</li>"
      +"<li class='collection-item' contenteditable='true' id='ideabody'>"+idea.body+"</li>"
      +"<button class='up'>+</button><button class='down'>-</button><li class='collection-item'>"+idea.quality+"</li>"
      +"<button class='btn waves-effect waves-light' type='submit' name='action' id='delete-idea'>Delete</button>"
      +"</ul>"
      )

}
function renderPost(newIdea){

    $("#index").prepend(
      "<ul class='collection' id='idea' data-id ='"+newIdea.id+"'>"
      +"<li class='collection-item' contenteditable='true' id='ideaname'>"+newIdea.name+"</li>"
      +"<li class='collection-item' contenteditable='true' id='ideabody'>"+newIdea.body+"</li>"
      +"<button class='up'>+</button><button class='down'>-</button><li class='collection-item'>"+newIdea.quality+"</li>"
      +"<button class='btn waves-effect waves-light' type='submit' name='action' id='delete-idea'>Delete</button>"
      +"</ul>"
      )
}
