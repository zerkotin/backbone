
exports.TextView = class TextView extends Backbone.View

  text: null

  initialize: (options) ->
    {@text} = options
    @render()

  render: ->
    @$el.append template(@text)

template = (text) ->
  """
  <span class="text-view">#{text}</span>
  """
