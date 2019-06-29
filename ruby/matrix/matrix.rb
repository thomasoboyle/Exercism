class Matrix
  attr_reader :columns, :numbers

  def initialize(numbers)
    @numbers = numbers
    @columns = rows.transpose
  end

  def rows
    numbers.lines.map { |row| row.split.map(&:to_i) }
  end
end

