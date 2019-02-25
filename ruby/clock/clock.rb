# Clock solution
class Clock
  attr_accessor :minute

  def initialize(hour: 0, minute: 0)
    @minute = hour * 60 + minute
  end

  def to_s
    format('%02d:%02d', divided_hours, divided_minutes)
  end

  def divided_hours
    hours = minute / 60
    hours % 24
  end

  def divided_minutes
    minute % 60
  end

  def +(other)
    Clock.new(hour: divided_hours, minute: divided_minutes + other.minute)
  end

  def -(other)
    Clock.new(hour: divided_hours, minute: divided_minutes - other.minute)
  end

  def ==(other)
    self.class === other &&
      self.divided_hours == other.divided_hours &&
      self.divided_minutes == other.divided_minutes
  end

  def hash
    minute.hash
  end

  alias eql? ==

end
