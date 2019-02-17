require 'pry'

class Triangle
  attr_reader :first_side, :second_side, :third_side

  def initialize(side_lengths)
    @first_side = side_lengths[0]
    @second_side = side_lengths[1]
    @third_side = side_lengths[2]
  end

  def equilateral?
    return true if equialateral
  end

  def equialateral
    return false if first_side == 0
    first_side == second_side && first_side == third_side
  end
end
