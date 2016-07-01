class String
  define_method(:word_count) do |sentence|
    input_word = self
    input_sentence = sentence
    input_sentence.scan(/(?=#{input_word})/).count
  end
end
