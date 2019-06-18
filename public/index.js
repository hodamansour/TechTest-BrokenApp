//****** DONT CHANGE THIS FILE ********//
function sendInfo(url, method, data, cb) {
  var options = {
    method: method,
    headers: {
      'Content-Type': 'application/json'
    }
  }

  if (method === 'POST') {
    options.body = JSON.stringify({ data: data });
  }

  fetch(url, options)
    .then(function(response) {
      return response.json();
    })
    .then(function(success) {
      cb(null, success);
    })
    .catch(function(e) {
      cb(e);
    })
}
//******************************************//
