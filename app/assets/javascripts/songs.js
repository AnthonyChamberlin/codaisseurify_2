// function submitSong() {
//   var input = document.getElementById('newSong');
//   var newSongTitle = input.value;
//   createSong(newSongTitle);
//
//   input.value = null;
// }
//
// function createSong(title) {
//
//   var listItem = document.createElement("li");
//   listItem.innerHTML = title;
//   fullList = document.getElementById('songListUl');
//   fullList.appendChild(listItem);
//
//   var newSong = { title: title };
//
//   $.ajax({
//   type: "POST",
//   url: "/artists/" + id + ".json",
//   data: JSON.stringify({
//       song: newSong
//   }),
//   contentType: "application/json",
//   dataType: "json"
// });
// }
//

$(document).ready(function() {
  $("form#song_submit").bind('submit', submitSong);
});

function submitSong(id) {
  var input = document.getElementById('newSong');
  var newSongTitle = input.value;
  createSong(newSongTitle);
  input.value = null;

  $.ajax({
    type: "POST",
    url: "/artists/" + id + ".json",
    data: JSON.stringify({
      song: newSong
    }),
    contentType: "application/json",
    dataType: "json"
  })
  .done(function(data){
    var listItem = document.createElement("li");
    listItem.innerHTML = '<div class="btn btn-danger">Delete</div> ' + title;
    list = document.getElementById('songlist');
    list.appendChild(listItem);
  })
  .fail(function(data){

  });
}


function createSong(title) {

  var newSong = { name: name };

  $.ajax({
    type: "POST",
    url: "songs.json",
    data: JSON.stringify({
        song: newSong
    }),
    contentType: "application/json",
    dataType: "json"
  })
  .done(function(){
    var listItem = document.createElement("li");
    listItem.innerHTML = '<div class="btn btn-danger">Delete</div> ' + title;
    list = document.getElementById('songlist');
    list.appendChild(listItem);
  })
  .fail(function(error){
  });
}
