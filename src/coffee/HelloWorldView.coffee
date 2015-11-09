
exports.HelloWorldView = class HelloWorldView extends Backbone.View

  className: 'hello-world-view'

  events:
    'click .hello-world-title': '_titleClicked'

  initialize: ->
    @render()

  render: ->
    @$el.append template()

  _titleClicked: ->
    Backbone.history.navigate('test', {trigger: yes})

template = ->
  """
  <div class="hello-world-title">HELLO World! :)</div>
  """
