=begin
Write your code for the 'Transpose' exercise in this file. Make the tests in
`transpose_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/transpose` directory.
=end

class Transpose
  def self.transpose(input)
    input = input.lines
    size = input.map(&:size).max
    input.map { |line| line.chomp.ljust(size).chars }.transpose.map(&:join).join("\n").strip
  end
end