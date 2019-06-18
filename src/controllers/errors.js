const clientError = (req, res) => {
  const page = req.url;
  res.render('404', { message: `Sorry... I couldn't find ${page} on this server...` })
};

const serverError = (err, res) => {
  console.log('Server Error: ', err.stack);
  return res.render('500', { message: "Something really bad happened!" })
};

module.exports = {
  clientError,
  serverError
}
