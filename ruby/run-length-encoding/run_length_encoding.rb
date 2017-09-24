class RunLengthEncoding
  def self.encode(input)
    input_hash = Hash.new(0)
    input_array = input.split('')
    input_array.each do |value|
      input_hash[value] += 1
    end
    input_hash
  end
end