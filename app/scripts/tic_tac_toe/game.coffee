namespace("TicTacToe")

class TicTacToe.Game

  constructor: (@options) ->
    @_board = @options.board

  board: ->
    @_board

  hasWinner: ->
    _.any(@combinations(), @filledWithTheSame)

  winner: ->
    winningCombination = _.detect(@combinations(), @filledWithTheSame)
    winningCombination[0]

  combinations: ->
    @_board.rows().concat(@_board.columns()).concat(@_board.diagonals())

  filledWithTheSame: (row) ->
    _.uniq(row).length == 1 && not _.any(row, _.isUndefined)
