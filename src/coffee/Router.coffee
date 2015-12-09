{HelloWorldView} = require './HelloWorldView'
{TextView} = require './TextView'

exports.Router = class Router extends Backbone.Router

  currentView: null

  routes:
    '': 'default'
    'test': 'test'

  default: ->
    @_openNewPage('hello-world-container', HelloWorldView, {})

  test: ->
    @_openNewPage('test-container', TextView, {text: 'i am a Test View, i came from another page'})

  _openNewPage: (className, viewConstructor, options) ->
    @currentView?.remove()

    $el = $(containerTemplate className)
    $('body').append $el

    viewOptions = $.extend(true, {el: $el}, options)

    @currentView = new viewConstructor(viewOptions)

containerTemplate = (className) ->
  """
  <div class="#{className}"></div>
  """
