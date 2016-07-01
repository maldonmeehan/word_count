require('sinatra')
require('sinatra/reloader')
require('./lib/word_count')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/results') do
  @input_word = params.fetch('input_word')
  @input_sentence = params.fetch('input_sentence')
  @results = @input_word.word_count(@input_sentence)
  erb(:results)
end
