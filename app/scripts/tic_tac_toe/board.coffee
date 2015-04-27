namespace("TicTacToe")

class TicTacToe.Board

  constructor: ->
    @values = {}

  isEmpty: ->
    Object.keys(@values).length == 0

  updateValue: (position, value) ->
    @values[position] = value

  rows: ->
    _.collect([1,2,3], (number) =>
      @getRow(number))

  columns: ->
    _.collect([1,2,3], (number) =>
      @getColumn(number))

  diagonals: ->
    [
      @getValues([1, 5, 9]),
      @getValues([3, 5, 7]),
    ]

  getRow: (number) ->
    initialPosition = (number - 1) * 3 + 1
    @getValues([initialPosition, initialPosition + 1, initialPosition + 2])

  getColumn: (number) ->
    @getValues([number, number + 3, number + 6])

  getValues: (positions) ->
    _.collect(positions, (position) => @getValue(position))

  getValue: (position) ->
    @values[position]

