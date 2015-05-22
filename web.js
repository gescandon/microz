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
app.get('/bios', function (req, res) {
  res.sendFile(__dirname + '/views/bios.html')
})
app.get('/booking', function (req, res) {
  res.sendFile(__dirname + '/views/booking.html')
})
app.get('/bouncer', function (req, res) {
  res.sendFile(__dirname + '/views/bouncer.html')
})
app.get('/cloud', function (req, res) {
  res.sendFile(__dirname + '/views/cloud.html')
})
app.get('/faces', function (req, res) {
  res.sendFile(__dirname + '/views/faces.html')
})
app.get('/fibber', function (req, res) {
  res.sendFile(__dirname + '/views/microz.html')
})
app.get('/flock', function (req, res) {
  res.sendFile(__dirname + '/views/flock.html')
})
app.get('/flyer', function (req, res) {
  res.sendFile(__dirname + '/views/flyer.html')
})
app.get('/flyerface', function (req, res) {
  res.sendFile(__dirname + '/views/flyerface.html')
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
app.get('/shock2', function (req, res) {
  res.sendFile(__dirname + '/views/shock2.html')
})
app.get('/shock9', function (req, res) {
  res.sendFile(__dirname + '/views/shock9.html')
})
app.get('/simon', function (req, res) {
  res.sendFile(__dirname + '/views/simon.html')
})
app.get('/singer', function (req, res) {
  res.sendFile(__dirname + '/views/singer.html')
})
app.get('/sketchTalk', function (req, res) {
  res.sendFile(__dirname + '/views/sketchTalk.html')
})

var port = Number(process.env.PORT || 5000);
app.listen(port, function() {
  console.log("Listening on " + port);
});