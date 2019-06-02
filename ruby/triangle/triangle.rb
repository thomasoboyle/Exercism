class Triangle
  attr_reader :first_side, :second_side, :third_side, :sorted_lengths, :multiplied_lengths

  def initialize(side_lengths)
    @sorted_lengths = side_lengths.sort
    @multiplied_lengths = sorted_lengths.map {|n| n * 10 }
    @first_side = multiplied_lengths[0]
    @second_side = multiplied_lengths[1]
    @third_side = multiplied_lengths[2]
  end

  def equilateral?
    return false if invalid_lengths?
    true if sorted_lengths.uniq.size == 1
  end

  def isosceles?
    return false if invalid_lengths?
    true if sorted_lengths.uniq.size <= 2
  end

  def invalid_lengths?
    return true if sorted_lengths.include?(0)
    lengths = sorted_lengths.uniq
    if lengths.size >= 2
      true if lengths[0] * 2 < lengths[1]
    end
  end

  def scalene?
    true if scalene_ratio
  end

  def scalene_ratio
    first_side % 4 == 0 && second_side % 5 == 0 && third_side % 6 == 0
  end
end
