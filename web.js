//web.js
var express = require("express");
var logfmt = require("logfmt");
var app = express();

app.set('views', './views')
app.set('view engine', 'jade')
app.use(logfmt.requestLogger());
app.use('/public', express.static('public'));
app.use('/bootstrap', express.static('bootstrap'));

app.get('/', function (req, res) {
  res.sendFile(__dirname + '/views/faces.html')
})
app.get('/bobble', function (req, res) {
  res.sendFile(__dirname + '/views/bobble.html')
})
app.get('/booking', function (req, res) {
  res.sendFile(__dirname + '/views/booking.html')
})
app.get('/bouncer', function (req, res) {
  res.sendFile(__dirname + '/views/bouncer.html')
})
app.get('/faces', function (req, res) {
  res.sendFile(__dirname + '/views/faces.html')
})
app.get('/fibber', function (req, res) {
  res.sendFile(__dirname + '/views/microz.html')
})
app.get('/flyers', function (req, res) {
  res.sendFile(__dirname + '/views/flyers.html')
})
app.get('/hits', function (req, res) {
  res.sendFile(__dirname + '/views/hits.html')
})
app.get('/nextgig', function (req, res) {
  res.sendFile(__dirname + '/views/nextgig.html')
})
app.get('/p5', function (req, res) {
  res.sendFile(__dirname + '/views/p5.html')
})
app.get('/shock', function (req, res) {
  res.sendFile(__dirname + '/views/shock.html')
})
app.get('/simon', function (req, res) {
  res.sendFile(__dirname + '/views/simon.html')
})
app.get('/sketchTalk', function (req, res) {
  res.sendFile(__dirname + '/views/sketchTalk.html')
})

var port = Number(process.env.PORT || 5000);
app.listen(port, function() {
  console.log("Listening on " + port);
});