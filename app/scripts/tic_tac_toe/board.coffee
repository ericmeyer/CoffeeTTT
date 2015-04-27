namespace("TicTacToe")

class TicTacToe.Board

  constructor: ->
    @values = {}

  isEmpty: ->
    Object.keys(@values).length == 0

  updateValue: (position, value) ->
    @values[position] = value

  getValue: (position) =>
    @values[position]

  rows: ->
    _.collect([1,2,3], (number) =>
      @_getRow(number))

  columns: ->
    _.collect([1,2,3], (number) =>
      @_getColumn(number))

  diagonals: ->
    [
      @_getValues([1, 5, 9]),
      @_getValues([3, 5, 7]),
    ]

  _getRow: (number) ->
    initialPosition = (number - 1) * 3 + 1
    @_getValues([initialPosition, initialPosition + 1, initialPosition + 2])

  _getColumn: (number) ->
    @_getValues([number, number + 3, number + 6])

  _getValues: (positions) ->
    _.collect(positions, @getValue)
