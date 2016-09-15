
 class Fixnum
  def number(input)
    @input = input
  end

  def to_roman
    if @input == 1
      print "I"
    elsif @input == 2
      print "II"
    end
  end
end