class Raindrops
  def self.convert(number)
    if number == 1
      number = "#{number}"
    elsif number == 3
      number = "Pling"
    elsif number == 5
      number = "Plang"
    elsif number == 7
      number = "Plong"
    end
  end
end