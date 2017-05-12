//thats our server, it includes a simple file handler and proxy to our redmine queries
var express = require('express');
var bodyParser = require('body-parser');
var app = express();
app.use(bodyParser.json());

var PropertiesReader = require('properties-reader');
var properties = PropertiesReader('./server.properties');

configSimpleWebServer(); //should be called last

function configSimpleWebServer() {

  app.get('/', function(req, res) { //handles get to localhost
     res.sendFile(__dirname + '/index.html')
  });

  app.get(/^(.+)$/, function(req, res){ //handles requests for files
      res.sendFile(__dirname + req.params[0]);
  });

  var port = properties.get('server.http.port') || 8080;
  app.listen(port, function() { //runs the web server
    console.log('Server running on port '+port);
  });
}
