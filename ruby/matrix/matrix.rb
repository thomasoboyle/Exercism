class Matrix
  attr_reader :numbers

  def initialize(numbers)
    @numbers = numbers
  end

  def rows
    numbers.lines.map { |row| row.split.map(&:to_i) }
  end

  def columns
    rows.transpose
  end
end

