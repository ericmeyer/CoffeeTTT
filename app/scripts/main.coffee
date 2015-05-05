$ ->
  'use strict'

  # new TicTacToe.Router()
  # Backbone.history.start()

  gameView = new TicTacToe.GameView
    game: new TicTacToe.Game
      board: new TicTacToe.Board()

  $("[data-id=game]").html(gameView.render().el)
