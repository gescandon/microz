//web.js
var express = require("express");
var logfmt = require("logfmt");
var app = express();

app.set('views', './views')
app.set('view engine', 'jade')
app.use(logfmt.requestLogger());

app.get('/', function (req, res) {
  res.sendFile(__dirname + '/views/microz.html')
})

var port = Number(process.env.PORT || 5000);
app.listen(port, function() {
  console.log("Listening on " + port);
});