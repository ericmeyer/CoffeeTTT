describe "PrimeFactors.Generator", ->

  factorsOf = (number) ->
    new PrimeFactors.Generator().generate(number)

  it "has no factors for 1", ->
    expect(factorsOf(1)).toEqual([])

  it "factors 2", ->
    expect(factorsOf(2)).toEqual([2])

  it "factors 3", ->
    expect(factorsOf(3)).toEqual([3])

  it "factors 4", ->
    expect(factorsOf(4)).toEqual([2, 2])

  it "factors 5", ->
    expect(factorsOf(5)).toEqual([5])

  it "factors 6", ->
    expect(factorsOf(6)).toEqual([2, 3])

  it "factors 8", ->
    expect(factorsOf(8)).toEqual([2, 2, 2])

  it "factors 9", ->
    expect(factorsOf(9)).toEqual([3, 3])

  it "factors 25", ->
    expect(factorsOf(25)).toEqual([5, 5])
