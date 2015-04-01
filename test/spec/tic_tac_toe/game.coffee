describe "TicTacToe.Game", ->

  game = (board) ->
    new TicTacToe.Game
      board: board

  beforeEach ->
    @board = new TicTacToe.Board()

  it "has a board", ->
    _game = game(@board)
    expect(_game.board()).toEqual(@board)

  describe "Determing if there is a winner", ->

    it "has no winner when the board is empty", ->
      _game = game(@board)
      expect(_game.hasWinner()).toBeFalsy()

    it "has a winner with three 'player one' in the first row", ->
      @board.updateValue(1, 'player one')
      @board.updateValue(2, 'player one')
      @board.updateValue(3, 'player one')

      _game = game(@board)

      expect(_game.hasWinner()).toBeTruthy()

    it "has a winner with three 'player two' in the second row", ->
      @board.updateValue(4, 'player two')
      @board.updateValue(5, 'player two')
      @board.updateValue(6, 'player two')

      _game = game(@board)

      expect(_game.hasWinner()).toBeTruthy()

    it "does not have a winner if 'player one' only has two in the first row", ->
      @board.updateValue(1, 'player one')
      @board.updateValue(2, 'player one')

      _game = game(@board)

      expect(_game.hasWinner()).toBeFalsy()

    it "has a winner with three 'player one' in the first column", ->
      @board.updateValue(1, 'player one')
      @board.updateValue(4, 'player one')
      @board.updateValue(7, 'player one')

      _game = game(@board)

      expect(_game.hasWinner()).toBeTruthy()

    it "has no winner when the board is a draw", ->
      @board.updateValue(1, 'x')
      @board.updateValue(3, 'x')
      @board.updateValue(5, 'x')
      @board.updateValue(6, 'x')
      @board.updateValue(8, 'x')

      @board.updateValue(2, 'o')
      @board.updateValue(4, 'o')
      @board.updateValue(7, 'o')
      @board.updateValue(9, 'o')

      _game = game(@board)

      expect(_game.hasWinner()).toBeFalsy()

    it "has a winner in a diagonal", ->
      @board.updateValue(1, 'x')
      @board.updateValue(5, 'x')
      @board.updateValue(9, 'x')

      _game = game(@board)

      expect(_game.hasWinner()).toBeTruthy()

  describe "Calculating who the winner is", ->

    it "is 'player one'", ->
      @board.updateValue(1, 'player one')
      @board.updateValue(4, 'player one')
      @board.updateValue(7, 'player one')

      _game = game(@board)

      expect(_game.winner()).toEqual('player one')

    it "is a different player", ->
      @board.updateValue(7, 'x')
      @board.updateValue(8, 'x')
      @board.updateValue(9, 'x')

      _game = game(@board)

      expect(_game.winner()).toEqual('x')
