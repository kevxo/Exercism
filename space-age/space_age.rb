# Write your code for the 'Space Age' exercise in this file. Make the tests in
# `space_age_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/space-age` directory.
class SpaceAge
  attr_reader :sec

  def initialize(sec)
    @sec = sec
    @mercury = 0.2408467
    @venus = 0.61519726
    @mars = 1.8808158
    @jupiter = 11.862615
    @saturn = 29.447498
    @uranus = 84.016846
    @neptune = 164.79132
  end

  def on_earth
    seconds_in_a_yr = 31_556_952
    (@sec / seconds_in_a_yr.to_f).round(2)
  end

  def on_mercury
    seconds_in_a_yr = (@mercury * 31_556_952)
    (@sec / seconds_in_a_yr.to_f).round(2)
  end

  def on_venus
    seconds_in_a_yr = (@venus * 31_556_952)
    (@sec / seconds_in_a_yr.to_f).round(2)
  end

  def on_mars
    seconds_in_a_yr = (@mars * 31_556_952)
    (@sec / seconds_in_a_yr.to_f).round(2)
  end

  def on_jupiter
    seconds_in_a_yr = (@jupiter * 31_556_952)
    (@sec / seconds_in_a_yr.to_f).round(2)
  end

  def on_saturn
    seconds_in_a_yr = (@saturn * 31_556_952)
    (@sec / seconds_in_a_yr.to_f).round(2)
  end

  def on_uranus
    seconds_in_a_yr = (@uranus * 31_556_952)
    (@sec / seconds_in_a_yr.to_f).round(2)
  end

  def on_neptune
    seconds_in_a_yr = (@neptune * 31_556_952)
    (@sec / seconds_in_a_yr.to_f).round(2)
  end
end
