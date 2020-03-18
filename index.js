
const express = require('express');
const api = require('./api');
const app = express();

app.use(express.json());
app.use('/api', api);

app.listen(3000, function () {
  console.log('Example app listening on port 3000!');
});
