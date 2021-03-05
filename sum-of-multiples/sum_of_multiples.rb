# Write your code for the 'Sum Of Multiples' exercise in this file. Make the tests in
# `sum_of_multiples_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/sum-of-multiples` directory.
class SumOfMultiples
  attr_reader :num1, :num2, :num3, :num4, :num5

  def initialize(num1 = 0, num2 = 0, num3 = 0, num4 = 0, num5 = 0)
    @num1 = num1
    @num2 = num2
    @num3 = num3
    @num4 = num4
    @num5 = num5
  end

  def to(limit)
    range = (0..(limit - 1)).to_a
    sum = 0

    range.each do |num|
      if !@num1.zero? && !@num2.zero? && !@num3.zero? && !@num4.zero? && !@num5.zero?
        if (num % @num1).zero? || (num % @num2).zero? || (num % @num3).zero? || (num % @num4).zero? || (num % @num5).zero?
          sum += num
        end
      elsif !@num1.zero? && !@num2.zero? && !@num3.zero? && !@num4.zero?
        sum += num if (num % @num1).zero? || (num % @num2).zero?  || (num % @num3).zero? || (num % @num4).zero?
      elsif !num1.zero? && !@num2.zero? && !@num3.zero?
        sum += num if (num % @num1).zero? || (num % @num2).zero?  || (num % @num3).zero?
      elsif !num1.zero? && !@num2.zero?
        sum += num if (num % @num1).zero? || (num % @num2).zero?
      elsif !num1.zero?
        sum += num if (num % @num1).zero?
      else
        0
      end
    end

    sum
  end
end
