class Acronym
  def self.abbreviate(string)
    string = string.scan(/\b\w/)
    acronym = ""

    string.each do |letter|
      acronym << letter[0]
    end
    acronym.upcase
  end
end
