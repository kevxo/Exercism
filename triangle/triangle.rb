# Write your code for the 'Triangle' exercise in this file. Make the tests in
# `triangle_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/triangle` directory.

class Triangle
  attr_reader :sides

  def initialize(sides)
    @sides = sides
  end

  def equilateral?
    @sides.uniq.size <= 1 unless @sides.include?(0)
  end

  def isosceles?
    @sides.uniq.size <= 2 unless @sides.include?(1)
  end

  def scalene?
    @sides.uniq.size == 3 if @sides[0] < @sides[2]
  end
end
