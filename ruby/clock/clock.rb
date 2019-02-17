require 'pry'

# Clock solution
class Clock
  attr_accessor :hour, :minutes

  def initialize(hour: 0, minute: 0)
    @minutes = hour * 60 + minute
    @hour = minutes / 60
  end

  def to_s
    format('%02d:%02d', divided_hours, divided_minutes)
  end

  def divided_hours
    hour % 24
  end

  def divided_minutes
    minutes % 60
  end
end
