namespace("PrimeFactors")

class PrimeFactors.View extends Backbone.View

  template: JST["app/scripts/prime_factors/view_template.ejs"]
  primeTemplate: JST["app/scripts/prime_factors/prime_view_template.ejs"]

  events:
    "click [data-id=generate]": "calculatePrimes"

  render: ->
    @$el.html(@template())
    @

  calculatePrimes: ->
    @$("[data-id=primes]").html("")
    _.each(@primes(@currentNumber()), @renderPrime)

  renderPrime: (prime) =>
    @$("[data-id=primes]").append(@primeTemplate(prime: prime))

  primes: (number) ->
    generator = new PrimeFactors.Generator()
    primes = generator.generate(number)

  currentNumber: ->
    parseInt(@$("[data-id=number]").val())
