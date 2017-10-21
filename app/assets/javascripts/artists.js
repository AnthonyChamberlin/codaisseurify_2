// SUBMIT SONG
function submitSong(event) {
  event.preventDefault();

  var title = $("#newSong").val();
  createSong(title);
  $("#newSong").val(null);

// CREATE SONG
  function createSong(title) {
    var songItem = $("<li></li>");
    var label = $('<label></label>');
    label.html(title);
    songItem.append(label);
    $("#songListUl").append(songItem);

}
$("form").bind('submit', submitSong);

}
