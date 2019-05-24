class Scrabble
  attr_reader :word

  def initialize(word)
    @word = word.to_s.strip.upcase
  end

  def score
    word.chars.sum { |letter| TILE_POINTS[letter] }
  end

  def self.score(word)
    new(word).score
  end

  TILE_POINTS = {
    'A' => 1,  'G' => 2,  'M' => 3,  'S' => 1,  'Y' => 4,
    'B' => 3,  'H' => 4,  'N' => 1,  'T' => 1,  'Z' => 10,
    'C' => 3,  'I' => 1,  'O' => 1,  'U' => 1,
    'D' => 2,  'J' => 8,  'P' => 3,  'V' => 4,
    'E' => 1,  'K' => 5,  'Q' => 10, 'W' => 4,
    'F' => 4,  'L' => 1,  'R' => 1,  'X' => 8,
  }

end
