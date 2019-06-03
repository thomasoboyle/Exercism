class Matrix
  attr_reader :rows, :columns

  def initialize(numbers)
    @rows = numbers.split("\n").map { |row| row.split(' ').map(&:to_i) }
    @columns = rows.transpose
  end
end
