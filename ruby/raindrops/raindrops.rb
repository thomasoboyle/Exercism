class Raindrops
  def self.convert(number)
    if number == 1
      number = "#{number}"
    # elsif (number / 7) % 5 == 0
    #   number = "PlangPlong"
    # getting code smells... this does seem sustainable
    elsif (number / 3) % 5 == 0
      number = "PlingPlang"
    elsif (number / 3) % 7 == 0
      number = "PlingPlong"
    elsif number % 3 == 0
      number = "Pling"
    elsif number % 5 == 0
      number = "Plang"
    elsif number % 7 == 0
      number = "Plong"
    end
  end
end