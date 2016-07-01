require('rspec')
require('word_count')

describe('String#word_count') do
  it("counts how many time a letter appears in a string") do
    expect(("a").word_count("abc")).to(eq("1"))
  end
end
