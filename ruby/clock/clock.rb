# Clock solution
require 'pry'
class Clock
  attr_accessor :minutes, :hours

  def initialize(hour: 0, minute: 0)
    @minutes = hour * 60 + minute
    @hours = (@minutes / 60) % 24
  end

  def to_s
    format('%02d:%02d', hours, divided_minutes)
  end

  def divided_minutes
    minutes % 60
  end

  def +(other)
    Clock.new(hour: hours, minute: divided_minutes + other.minutes)
  end

  def -(other)
    Clock.new(hour: hours, minute: divided_minutes - other.minutes)
  end

  def ==(other)
    self.class === other &&
      self.divided_minutes == other.divided_minutes
  end

  def hash
    minutes.hash
  end
end
