
exports.HelloWorldView = class HelloWorldView extends Backbone.View

  className: 'hello-world-view'

  initialize: ->
    @render()

  render: ->
    @$el.append template()

template = ->
  """
  <div class="hello-world-title">HEllO World! :)</div>
  """
