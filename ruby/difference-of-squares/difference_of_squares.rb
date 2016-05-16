class Squares
  def initialize(number)
    @number = number
  end

  def square_of_sum()
    #(1..@number).reduce(:+)**2

    sum = 0

    (1..@number).reduce(0) do |acc, i|
       acc = acc + i
    end **2
    # sum = sum**2
  end

end