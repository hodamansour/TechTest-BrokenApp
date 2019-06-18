const app = require('./app');

app.listen(app.get('port'), () => {
  console.log(`Magic happens on http://${app.get('host')}:${app.get('port')}`);
})
