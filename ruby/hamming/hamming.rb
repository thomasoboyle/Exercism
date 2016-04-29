class Hamming
	def self.compute(value_1, value_2)
    count = 0
    Range.new(0, value_1.length-1).to_a.each do |index|
  		if value_1[index] == value_2[index]
  			count += 0
  		else
  			count += 1
  		end
    end
    count
	end
end