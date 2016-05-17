class Squares
  def initialize(number)
    @number = number
  end

  def square_of_sum()
    (1..@number).reduce(:+)**2
  end

  def sum_of_squares()
    sum = (1..@number).to_a.reduce(0) {|acc, elm| 
      acc += elm ** 2
    }
  end
end