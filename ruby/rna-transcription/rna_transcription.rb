class Complement
  VERSION = 3
  def self.of_dna(rna)
    letters_array = rna.chars
    complement = []
    
    letters_array.map do |letter| 
      if letter == 'G'
        complement.push('C')
      elsif letter == 'C'
        complement.push('G')
      elsif letter == 'T'
        complement.push('A')
      elsif letter == 'A'
        complement.push('U')
      end
    end

puts complement.class
    complement.to_s
  end
end