class Pangram
  def self.is_pangram?(str)
    if str.include? ""
      is_pangram = true
    elsif str.include? ("a".."z").to_a
      is_pangram = true
    end
  end

end