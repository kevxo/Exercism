# Write your code for the 'Pangram' exercise in this file. Make the tests in
# `pangram_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/pangram` directory.

class Pangram
  def self.pangram?(sentence)
    alphabet = ('a'..'z').to_a

    sentence_array = sentence.scan(/\w/).map(&:downcase)

    alphabet.all? { |letter| sentence_array.include? letter }
  end
end
