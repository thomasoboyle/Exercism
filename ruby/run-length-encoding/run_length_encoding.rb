class RunLengthEncoding
  def self.encode(input)
    input_hash = Hash.new(0)
    input_array = input.split('')
    input_array.each do |value|
      input_hash[value] += 1
    end
    output = input_hash.map do |key, value|
      value == 1 ? value = "" : value = value
    "#{value}#{key}"
    end
    output.join("")
  end
end