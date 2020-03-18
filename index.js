
const express = require('express');
const api = require('./api');
const server = require('./server');
const app = express();

app.use(express.json());
app.use(express.static('public'));
app.use('/api', api);
app.use('/', server);

app.listen(3000, function () {
  console.log('Example app listening on port 3000!');
});
