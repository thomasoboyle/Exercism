class Pangram
  def self.is_pangram?(str)
    alph = ("a".."z").to_a

    if str.include?("")
      is_pangram = true
    
    elsif str.include?(alph)
      is_pangram = true
    end
  end
end
