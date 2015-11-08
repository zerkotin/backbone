{HelloWorldView} = require './HelloWorldView'

exports.Router = class Router extends Backbone.Router

  currentView: null

  routes:
    '': 'default'

  default: ->
    currentView = new HelloWorldView(el: $('body'))
