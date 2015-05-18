namespace('PrimeFactors')

class PrimeFactors.Generator

  generate: (number) ->
    factors = []
    if number > 1
      _.each([2..number], ((candidate) ->
        while (number % candidate == 0)
          factors.push candidate
          number /= candidate
      ))
    factors
