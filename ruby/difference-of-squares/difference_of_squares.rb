class Squares
  def initialize(number)
    @number = number
  end

  def square_of_sum()
    (1..@number).reduce(:+)**2
  end

  def sum_of_squares()
    array = (1..@number).to_a

    sqr = 0
    array.each do |i|
      sqr += i **2
    end
    sqr
  end
end