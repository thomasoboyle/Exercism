class Triangle
  attr_reader :sides

  def initialize(side_lengths)
    @sides = side_lengths.sort
  end

  def equilateral?
    return false if invalid_lengths?

    sides.uniq.size == 1
  end

  def isosceles?
    return false if invalid_lengths?

    sides.uniq.size <= 2
  end

  def invalid_lengths?
    return true if sides.include?(0)

    lengths = sides.uniq
    if lengths.size >= 2
      lengths[0] * 2 < lengths[1]
    end
  end

  def scalene?
    has_scalene_ratio?
  end

  private

  def has_scalene_ratio?
    first_side, second_side, third_side = sides.sort
    (first_side % 4).zero? && (second_side % 5).zero? && (third_side % 6).zero?
  end
end
