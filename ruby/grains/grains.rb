class Grains
  def self.square(position)
    if (position <= 0 || position >= 65)
      raise(ArgumentError)
    else
      2 ** (position - 1)
    end
  end

  def self.total
    2 ** (64) - 1
  end
end

module BookKeeping
  VERSION=1
end