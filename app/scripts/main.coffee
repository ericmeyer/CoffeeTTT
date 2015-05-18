$ ->
  'use strict'

  # new TicTacToe.Router()
  # Backbone.history.start()

  primeFactorsView = new PrimeFactors.View()
  $("[data-id=app]").html(primeFactorsView.render().el)
