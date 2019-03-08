class Acronym
  def self.abbreviate(string)
    string = string.scan(/\b\w/)
    string.join.upcase
  end
end
