class Acronym
  def self.abbreviate(string)
    string = string.gsub("-", " ")
    acronym = ""
    word_array = string.split(" ")

    word_array.each do |word|
      acronym << word[0]
    end
    acronym.upcase
  end
end
