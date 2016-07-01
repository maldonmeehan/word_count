require('rspec')
require('word_count')

describe('String#word_count') do
  it("counts how many time a word appears in a string") do
    expect(("hello").word_count("hello world")).to(eq(1))
  end
end
