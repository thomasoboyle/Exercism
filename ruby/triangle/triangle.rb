require 'pry'

class Triangle
  attr_reader :first_side, :second_side, :third_side, :side_lengths

  def initialize(side_lengths)
    @first_side = side_lengths[0]
    @second_side = side_lengths[1]
    @third_side = side_lengths[2]
    @side_lengths = side_lengths
  end

  def equilateral?
    return true if equialateral
  end

  def equialateral
    return false if invalid_lengths?
    return true if side_lengths.uniq.size == 1
  end

  def isosceles?
    return true if isosceles
  end

  def isosceles
    return true if side_lengths.uniq.size <= 2
  end

  def invalid_lengths?
    side_lengths.include?(0)
  end
end
