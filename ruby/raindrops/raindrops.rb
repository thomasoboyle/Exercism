class Raindrops
  def self.convert(number)
    sounds = []
    if number == 1
      sounds.push("#{number}")
    elsif number % 3 == 0
      sounds.push("Pling")
    elsif number % 5 == 0
      sounds.push("Plang")
    elsif number % 7 == 0
      sounds.push("Plong")
    end
    sounds*""
  end
end