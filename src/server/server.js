
var express = require("express");
var app = express();

app.get("/", function(req, res) {
   res.sendfile('index.html')
});


app.get(/^(.+)$/, function(req, res){
    res.sendfile( __dirname + req.params[0]);
});

app.listen(8080, function() {
  console.log("Server running on port 8080");
});
