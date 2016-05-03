class Complement
  VERSION = 3
  def self.of_dna(rna)
    case rna
    when 'C'
      'G'
    when 'G'
      'C'
    when 'T'
      'A'
    when 'A'
      'U'

    end

  end
end