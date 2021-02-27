# Write your code for the 'Series' exercise in this file. Make the tests in
# `series_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/series` directory.

# frozen_string_literal: true

# Series class
class Series
  attr_reader :string

  def initialize(string)
    @string = string
  end

  def slices(num)
    raise ArgumentError if num > @string.length

    (@string.length - num + 1).times.map { |index| @string.slice(index, num) }
  end
end
