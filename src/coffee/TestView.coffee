
exports.TestView = class TestView extends Backbone.View

  className: 'test-view'

  initialize: ->
    @render()

  render: ->
    @$el.append template()

template = ->
  """
  <div class="test-title">this is a test page</div>
  """
