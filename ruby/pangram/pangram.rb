class Pangram
  VERSION = 1

  def self.is_pangram?(string)
    input = string.downcase
    ("a".."z").select { |letter| !input.include? letter }.compact.empty?
  end
  
end