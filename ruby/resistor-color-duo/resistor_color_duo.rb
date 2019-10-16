class ResistorColorDuo

  def self.value(colors)
    number = "#{ColorValues[colors[0]]}" + "#{ColorValues[colors[1]]}"
    number.to_i
  end

  ColorValues = {
    # "black" => 0,
    "brown" => 10,
    "blue" => 6,
    "grey" => 8,
    "yellow" => 4,
    "violet" => 7,
    "orange" => 3,
    "green" => 5
   }

end
