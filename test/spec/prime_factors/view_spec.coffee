describe "PrimeFactors.View", ->

  describe "Generating primes", ->

    it "renders a form to input the number", ->
      view = new PrimeFactors.View()

      view.render()

      expect(view.$("[data-id=number]").length).toEqual(1)
      expect(view.$("[data-id=generate]").length).toEqual(1)

    it "displays the generated primes", ->
      view = new PrimeFactors.View()
      view.render()

      view.$("[data-id=number]").val("6")
      view.$("[data-id=generate]").click()

      primes = view.$("[data-class=prime]")
      expect(primes.length).toEqual(2)
      expect($(primes[0]).text()).toEqual("2")
      expect($(primes[1]).text()).toEqual("3")

    it "clears primes before rendering new ones", ->
      view = new PrimeFactors.View()
      view.render()

      view.$("[data-id=number]").val("6")
      view.$("[data-id=generate]").click()
      view.$("[data-id=generate]").click()

      primes = view.$("[data-class=prime]")
      expect(primes.length).toEqual(2)
