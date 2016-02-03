function fetchIndex(){
  $.ajax({
    type: "GET",
    url: "http://socalbros:3000/api/v1/ideas",
    success: function(indexIdeas){
      renderIndex(indexIdeas)
    }
  })
}

function postIdea(){
  $('#create-idea').on('click', function(){

    var ideaParams = { name: $('#idea-name').val(), body: $("#idea-body").val()}
    $.ajax({
      type: 'POST',
      url: 'http://socalbros:3000/api/v1/ideas',
      data: ideaParams,
      success: function(newIdea){
        renderPost(newIdea)
        clearField()
      },
      error: function(xhr){
        console.log(xhr.responseText)
      }
    })
  })
}

function clearField(){
  $('#idea-name').val("")
  $("#idea-body").val("")
}

function deleteIdea(){
$('#index').delegate("#delete-idea", 'click', function(){
  var idea = this.closest('#idea')
    $.ajax({
      type: 'DELETE',
       url: 'http://socalbros:3000/api/v1/ideas/'+ $(idea).attr('data-id'),
      success: function(){
        $(idea).remove();
      },
      error: function(xhr){
        console.log(xhr.responseText)
      }
    })
  })
}

function editIdeaName(){
  $('#index').delegate('#ideaname', 'keydown',function(event){
    var nl = event.which == 13

    if (nl) {
    var ideaId = this.closest('#idea')
    var data = { name: this.textContent}

    event.preventDefault();
    $.ajax({
      type: 'PUT',
      data: data,
       url: 'http://socalbros:3000/api/v1/ideas/'+ $(ideaId).attr('data-id'),
      success: function(something){
      },
    })
    }
  })
}
function editIdeaBody(){
  $('#index').delegate('#ideabody', 'keydown',function(event){
    var nl = event.which == 13

    if (nl) {
    var ideaId = this.closest('#idea')
    var data = { body: this.textContent}

    event.preventDefault();

    $.ajax({
      type: 'PUT',
      data: data,
       url: 'http://socalbros:3000/api/v1/ideas/'+ $(ideaId).attr('data-id'),
      success: function(){
      },
    })
    }
  })
}

var ideaQuality = { swill: 0, plausible: 1, genious: 2 }
var qualityTexts = {0: 'swill', 1: 'plausible', 2: 'genious'}

function likeQuality(){
  $('#index').delegate('.up', 'click', function(){
    var ideaId  = this.closest('#idea')
    var quality = ideaId.getElementsByClassName('quality')[0].textContent
    var changeQuality = ideaId.getElementsByClassName('quality')
    var qualityId = ideaQuality[quality]

    qualityId++

    debugger;
    $.ajax({
      type: 'PUT',
      data: {quality: qualityId},
      url: 'http://socalbros:3000/api/v1/ideas/'+ $(ideaId).attr('data-id'),
      success: function(){
          $(changeQuality).text(qualityTexts[qualityId])
      },
      error: function(xhr){
        console.log(xhr.responseText)
      }
    })
  })
}

function dislikeQuality(){
  $('#index').delegate('.down', 'click', function(){
    var ideaId  = this.closest('#idea')
    var quality = ideaId.getElementsByClassName('quality')[0].textContent
    var changeQuality = ideaId.getElementsByClassName('quality')
    var qualityId = ideaQuality[quality]

    qualityId--

    debugger;
    $.ajax({
      type: 'PUT',
      data: {quality: qualityId},
      url: 'http://socalbros:3000/api/v1/ideas/'+ $(ideaId).attr('data-id'),
      success: function(){
          $(changeQuality).text(qualityTexts[qualityId])
      },
      error: function(xhr){
        console.log(xhr.responseText)
      }
    })
  })
}
