require 'pry'

class Isogram
  def self.isogram?(string)
    return true if string == ''
    length = string.length
    string.downcase.split('').uniq.length == string.length
  end
end
