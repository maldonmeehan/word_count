require('rspec')
require('word_count')

describe('String#word_count') do
  it("counts how many time a word appears in a string") do
    expect(("hello").word_count("hello world")).to(eq(1))
  end

  it("counts how many time a word appears in a string when the user enters a capital letter") do
    expect(("the").word_count("The quick brown fox jumped over the lazy sleeping dog.")).to(eq(2))
  end

  it("counts how many time a word appears in a string when the user enters a sentence") do
    expect(("pick").word_count("If Peter Piper picked a peck of pickled peppers, where's the peck of pickled peppers Peter Piper picked?")).to(eq(0))
  end
end
