class Phrase
  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    words.each_with_object(Hash.new(0)) { |word, count| count[word] += 1 }
  end

  private

  attr_reader :phrase

  def words
    phrase.downcase.scan(/\b[\w']+\b/)
  end

end
