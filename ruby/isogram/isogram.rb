class Isogram
  def self.isogram?(string)
    return true if string == ''
    is_isogram(string)
  end

  def self.is_isogram(string)
    string = strip_string(string)
    string.downcase.split('').uniq.length == string.length
  end

  def self.strip_string(string)
    if string.include?('-') || string.include?(' ')
      string.sub(/[\s+-]/, '')
    else
      string
    end
  end
end
