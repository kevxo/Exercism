# Write your code for the 'Anagram' exercise in this file. Make the tests in
# `anagram_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/anagram` directory.

class Anagram
  attr_reader :word

  def initialize(word)
    @word = word
  end

  def match(words)
    matching_words = []

    delete_similar_words(words)
    words.each do |w|
      matching_words << w if @word.downcase.chars.sort.join == w.downcase.chars.sort.join
    end

    matching_words
  end

  def delete_similar_words(words)
    words.delete_if { |w| @word.upcase == w.upcase }
  end
end
