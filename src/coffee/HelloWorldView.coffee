{TabsView} = require './TabsView'
{TextView} = require './TextView'

exports.HelloWorldView = class HelloWorldView extends Backbone.View

  className: 'hello-world-view'

  tabsView: null

  events:
    'click .hello-world-title': '_titleClicked'

  initialize: ->
    @render()

  render: ->
    @$el.append template()

    $tabsElement = @$el.find('.hello-tabs-component')

    tabsView = new TabsView(el: $tabsElement, tabs: [
      {
        name: 'itzik'
        viewConstructor: TextView
        viewOptions: {text: 'i am tab Itzik'}
      }
      {
        name: 'sema'
        viewConstructor: TextView
        viewOptions: {text: 'i am tab Sema'}
      }
      ])


  _titleClicked: ->
    Backbone.history.navigate('test', {trigger: yes})

template = ->
  """
  <div class="hello-header">
    i am a header
    <i class="fa fa-anchor" aria-hidden="true"></i>
  </div>
  <div class="hello-world-title">HELLO World! :)</div>
  <div class="hello-tabs-component"></div>
  <div class="hello-footer">
    i am a footer
  </div>
  """
