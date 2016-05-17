class Squares
  def initialize(number)
    @number = number
  end

  def square_of_sum()
    (1..@number).reduce(:+)**2
  end

  def sum_of_squares()
    array = (1..@number).to_a

    sqr = []
    array.each do |i|
      sqr.push(i **2)
    end

    sqr.reduce(:+)
  end
end