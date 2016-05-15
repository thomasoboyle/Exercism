class Raindrops
    VERSION = 1
  
  def self.convert(number)
    sounds = ""
    
    sounds << "Pling" if number % 3 == 0
    sounds << "Plang" if number % 5 == 0
    sounds << "Plong" if number % 7 == 0

    sounds = number.to_s if sounds.empty?
    sounds
  end
  
end