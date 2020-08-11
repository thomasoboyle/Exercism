class ResistorColorDuo

  def self.value(colors)
    numbers = colors.map(&BANDS)
    numbers = "#{numbers[0]}" + "#{numbers[1]}"
    numbers.to_i
  end

  private

  BANDS = {
    "black" => 0,
    "brown" => 1,
    "red" => 2,
    "orange" => 3,
    "yellow" => 4,
    "green" => 5,
    "blue"  => 6,
    "violet" => 7,
    "grey" => 8,
    "white" => 9
   }

end
