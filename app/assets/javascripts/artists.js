function submitSong() {
  var input = document.getElementById('newSong');
  var newSongTitle = input.value;
  createSong(newSongTitle);

  input.value = null;
}

function createSong(title) {

  var listItem = document.createElement("li");
  listItem.innerHTML = '<i id="trash" class="fa fa-trash" aria-hidden="true"></i> ' + title;
  fullList = document.getElementById('songListUl');
  fullList.appendChild(listItem);

  var newSong = { title: title };

  $.ajax({
  type: "POST",
  url: "artists.json",
  data: JSON.stringify({
      song: newSong
  }),
  contentType: "application/json",
  dataType: "json"
});
}

$(document).ready(function() {
  $("form").bind('submit', submit);

});
