describe "TicTacToe.GameView", ->

  it "exists", ->
    gameView = new TicTacToe.GameView()
    expect(gameView).toBeDefined()

  describe "Making a move", ->

    beforeEach ->
      @game = new TicTacToe.Game
        board: new TicTacToe.Board()
      @gameView = new TicTacToe.GameView
        game: @game
      @gameView.render()
      @makeMoveSpy = spyOn(@game, 'makeMove')

    it "delegates to the game for the first position", ->
      @gameView.$("[data-type=position][data-position=1]").click()

      expect(@makeMoveSpy).toHaveBeenCalledWith(1)

    it "delegates to the game for a different position", ->
      @gameView.$("[data-type=position][data-position=4]").click()

      expect(@makeMoveSpy).toHaveBeenCalledWith(4)

    it "has nine positions", ->
      expect(@gameView.$("[data-type=position]").size()).toEqual(9)