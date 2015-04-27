namespace("TicTacToe")

class TicTacToe.Game

  constructor: (@options) ->
    @_board = @options.board

  board: ->
    @_board

  hasWinner: ->
    _.any(@_combinations(), @_filledWithTheSame)

  winner: ->
    winningCombination = _.detect(@_combinations(), @_filledWithTheSame)
    winningCombination[0]

  _combinations: ->
    @_board.rows().concat(@_board.columns()).concat(@_board.diagonals())

  _filledWithTheSame: (row) ->
    _.uniq(row).length == 1 && not _.any(row, _.isUndefined)
