module BookKeeping
     VERSION = 3 # Where the version number matches the one in the test.
end

class BeerSong

  def verse(number)
    if number >= 3
      "#{number} bottles of beer on the wall, #{number} bottles of beer.\nTake one down and pass it around, #{number - 1} bottles of beer on the wall.\n"
    elsif number == 2
      "#{number} bottles of beer on the wall, #{number} bottles of beer.\nTake one down and pass it around, #{number - 1} bottle of beer on the wall.\n"
    elsif number == 1
      "1 bottle of beer on the wall, 1 bottle of beer.\nTake it down and pass it around, no more bottles of beer on the wall.\n"
    elsif number == 0
      "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n"
    end
  end

  def verses(start_verse, end_verse)

    lines = (end_verse..start_verse).to_a.reverse

    lyrics = []
    lines.each do |line|
      lyrics.push(verse(line))
    end
    lyrics.join("\n").to_s
  end
end


