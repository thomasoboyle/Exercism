class ResistorColorDuo

  def self.value(colors)
    "#{ColorArray.index(colors[0])}#{ColorArray.index(colors[1])}".to_i
  end

  private

  ColorArray = [
    "black",
    "brown",
    "red",
    "orange",
    "yellow",
    "green",
    "blue" ,
    "violet",
    "grey",
    "white"
   ]

end
