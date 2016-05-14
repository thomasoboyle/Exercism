class Raindrops
  def self.convert(number)
    if number == 1
      number = "#{number}"
    elsif number % 3 == 0
      number = "Pling"
    elsif number % 5 == 0
      number = "Plang"
    elsif number % 7 == 0
      number = "Plong"
    end
  end
end