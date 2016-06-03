class Pangram
  VERSION = 1
  def self.is_pangram?(string)
    input = string.downcase
    pangram = ("a".."z")
    pangram.map { |letter|
      unless input.include?(letter)
        letter
      end
    }.compact.empty?
  end
end