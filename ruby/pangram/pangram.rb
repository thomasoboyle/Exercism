class Pangram
  def self.is_pangram?(str)
    input = str.downcase.chars
    pan = ("a".."z").to_a
    missing_letters = pan.map do |letter|
      unless input.include?(letter)
        letter
      end
    end.compact
    is_pangram = missing_letters.empty?
  end
end