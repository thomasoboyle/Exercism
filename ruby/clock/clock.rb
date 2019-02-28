# Clock solution
require 'pry'
class Clock
  attr_accessor :minutes

  def initialize(hour: 0, minute: 0)
    @minutes = (hour * 60 + minute) % 1440
  end

  def to_s
    format('%02d:%02d', formatted_hours, divided_minutes)
  end

  def formatted_hours
    (minutes / 60) % 24
  end

  def divided_minutes
    minutes % 60
  end

  def +(other)
    Clock.new(minute: minutes + other.minutes)
  end

  def -(other)
    Clock.new(minute: minutes - other.minutes)
  end

  def ==(other)
    self.class === other &&
      self.minutes == other.minutes
  end

  def hash
    minutes.hash
  end

  alias eql? ==

end
