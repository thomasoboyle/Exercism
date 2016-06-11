
 class Fixnum
  def number(input)
    @input
  end

  def to_roman
    if @input == "1"
      "I"
    elsif @input == "2"
      "II"
    else
      print "Fart"
    end
  end
end