require 'pry'

# Clock solution
class Clock
  attr_accessor :hours, :minutes

  def initialize(hour: 0, minute: 0)
    roll_over_hours, @minutes = minute.divmod(60)
    @hours = (hour + roll_over_hours) % 24
  end

  def to_s
    format('%02d:%02d', hours, minutes)
  end

  def +(additional_mins)
    all_minutes = minutes + additional_mins.minutes
    Clock.new(hour: hours, minute: all_minutes)
  end

  def -(neg_mins)
    all_minutes = minutes - neg_mins.minutes
    Clock.new(hour: hours, minute: all_minutes)
  end

  def ==(clock)
    self.class === clock &&
      hours == clock.hours &&
      minutes == clock.minutes
  end

  def hash
    hours.hash ^ minutes.hash
  end
end
