# Write your code for the 'Difference Of Squares' exercise in this file. Make the tests in
# `difference_of_squares_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/difference-of-squares` directory.

class Squares
  attr_reader :num

  def initialize(number)
    @num = number
  end

  def square_of_sum
    count = @num
    @num.times do |num|
      count += num
    end

    count**2
  end

  def sum_of_squares
    count = 0
    (@num+1).times do |num|
      count += num**2
    end

    count
  end

  def difference
    square_of_sum - sum_of_squares
  end
end
