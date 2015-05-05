namespace("TicTacToe")

class TicTacToe.GameView extends Backbone.View

  initialize: (@options) ->

  events:
    "click [data-type=position]": "makeMove"

  makeMove: (event) ->
    @options.game.makeMove(parseInt(event.target.dataset.position))

  render: ->
    @$el.html("")
    for num in [1..9]
      @$el.append("<li data-type=position data-position=#{num}>#{num}</li>")
    @
