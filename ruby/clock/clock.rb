# Clock solution
class Clock
  attr_accessor :hour, :minute

  def initialize(hour: 0, minute: 0)
    roll_over_hour, @minute = minute.divmod(60)
    @hour = (hour + roll_over_hour) % 24
  end

  def to_s
    format('%02d:%02d', hour, minute)
  end

  def +(other)
    Clock.new(hour: hour + other.hour, minute: minute + other.minute)
  end

  def -(other)
    Clock.new(hour: hour - other.hour, minute: minute - other.minute)
  end

  def ==(other)
    self.class === other &&
      hour == other.hour &&
      minute == other.minute
  end

  def hash
    hour.hash ^ minute.hash
  end

  alias eql? ==

end
