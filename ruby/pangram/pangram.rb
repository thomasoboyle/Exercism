class Pangram
  def self.is_pangram?(str)
  
  ("a".."z").each do |l|
  if str.include?(l).nil?
    is_pangram = false
  elsif str.include?("")
    is_pangram = true
  else
    is_pangram = true
  end
end

