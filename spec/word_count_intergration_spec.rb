require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe("the word cound results path", {:type => :feature}) do
  it('processes the user inputed word and inputed sentence and returns the number of time the inputed word appears') do
    visit('/')
    fill_in('input_word', :with => "the")
    fill_in('input_sentence', :with => "The quick brown fox jumped over the lazy sleeping dog.")
    click_button("Test")
    expect(page).to have_content('2')
  end
end
