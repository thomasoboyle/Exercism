class ResistorColorDuo

  def self.value(colors)
    number = "#{ColorValues[colors[0]]}" + "#{ColorValues[colors[1]]}[0]"
    number.to_i
  end

  def self.ones_column
    ColorValues[colors[0]]
  end

  def self.tens_column
    ColorValues[colors[1]]
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
