describe "TicTacToe.Board", ->

  beforeEach ->
    @board = new TicTacToe.Board()

  it "starts empty", ->
    expect(@board.isEmpty()).toBeTruthy()

  describe "Marking a spot", ->

    it "is not empty", ->
      @board.updateValue(1, 'x')
      expect(@board.isEmpty()).toBeFalsy()

    it "retrieves the updated value", ->
      @board.updateValue(1, 'x')
      expect(@board.getValue(1)).toEqual('x')

    it "retrieves a different value", ->
      @board.updateValue(3, 'o')
      expect(@board.getValue(3)).toEqual('o')

    it "stores multiple values", ->
      @board.updateValue(1, 'x')
      @board.updateValue(5, 'o')
      expect(@board.getValue(1)).toEqual('x')

  describe "The rows", ->
    beforeEach ->
      @board.updateValue(1, 'a')
      @board.updateValue(2, 'b')
      @board.updateValue(3, 'c')
      @board.updateValue(4, 'd')
      @board.updateValue(5, 'e')
      @board.updateValue(6, 'f')
      @board.updateValue(7, 'g')
      @board.updateValue(8, 'h')
      @board.updateValue(9, 'i')

    it "has three rows", ->
      expect(@board.rows().length).toEqual(3)

    it "returns the first row", ->
      expect(@board.rows()[0]).toEqual(['a', 'b', 'c'])

    it "returns the second row", ->
      expect(@board.rows()[1]).toEqual(['d', 'e', 'f'])

    it "returns the third row", ->
      expect(@board.rows()[2]).toEqual(['g', 'h', 'i'])


  describe "The columns", ->

    beforeEach ->
      @board.updateValue(1, 'a')
      @board.updateValue(2, 'b')
      @board.updateValue(3, 'c')
      @board.updateValue(4, 'd')
      @board.updateValue(5, 'e')
      @board.updateValue(6, 'f')
      @board.updateValue(7, 'g')
      @board.updateValue(8, 'h')
      @board.updateValue(9, 'i')

    it "has three columns", ->
      expect(@board.columns().length).toEqual(3)

    it "returns the first column", ->
      expect(@board.columns()[0]).toEqual(['a', 'd', 'g'])

    it "returns the second column", ->
      expect(@board.columns()[1]).toEqual(['b', 'e', 'h'])

    it "returns the third column", ->
      expect(@board.columns()[2]).toEqual(['c', 'f', 'i'])

  describe "The diagonals", ->

    beforeEach ->
      @board.updateValue(1, 'a')
      @board.updateValue(3, 'c')
      @board.updateValue(5, 'e')
      @board.updateValue(7, 'g')
      @board.updateValue(9, 'i')

    it "has two diagonals", ->
      expect(@board.diagonals().length).toEqual(2)

    it "returns the first diagonal", ->
      expect(@board.diagonals()[0]).toEqual(['a', 'e', 'i'])

    it "returns the second diagonal", ->
      expect(@board.diagonals()[1]).toEqual(['c', 'e', 'g'])
