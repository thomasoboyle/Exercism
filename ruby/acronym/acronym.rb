require 'pry'
class Acronym
  def self.abbreviate(string)
    first_letters = string.upcase.scan(/\b\w/).join
  end
end
