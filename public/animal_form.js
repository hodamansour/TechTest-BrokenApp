document.getElementById('submitAnimalBtn').addEventListener('click', function(e) {
  e.preventDefault();
  var data = {};

  // Something is missing...

  // Using sendInfo to send all the animal data to the server to save it in the database.
  sendInfo('/animals/new', 'POST', data, function(err, result) {
    if (err) console.log(err);
    else {
      alert(result.msg);
      if (result.redirect) {
        window.location = result.redirect;
      }
    }
  });
});
