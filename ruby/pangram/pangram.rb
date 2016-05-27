class Pangram
  def self.is_pangram?(str)

    unless str.include?
      ("a".."z").to_a.each do |i|
        if str.include?(l).nil?
          is_pangram = false
        else
          is_pangram = true
        end
      end
    end
  end
end

