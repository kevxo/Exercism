=begin
Write your code for the 'Word Count' exercise in this file. Make the tests in
`word_count_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/word-count` directory.
=end

class Phrase
  attr_reader :phrase
  def initialize(phrase)
    @phrase = phrase.gsub(/'([\S]+)'/, '\1')
  end

  def word_count
    hash = {}

    @phrase.downcase.strip.split(/[^'\w]+/).each do |word|
      if hash[word]
        hash[word] += 1
      else
        hash[word] = 1
      end
    end

    hash
  end
end
