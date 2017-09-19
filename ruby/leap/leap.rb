module Year
  def self.leap?(year)
    if (year % 4 == 0) and (year % 100 != 0 ) or (year % 400 == 0)
      true
    end
  end

end

module BookKeeping
  VERSION=3
end