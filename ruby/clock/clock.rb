require 'pry'

# Clock solution
class Clock
  attr_accessor :hour, :minute

  def initialize(hour:, minute: 0)
    @hour = hour
    @minute = minute
  end

  def to_s
    build_hour(hour) + ':' + build_minute(minute)
  end

  def build_hour(hour)
    if hour > 12
      hour = 24 - hour
      build_hour(hour)
    elsif hour < 10
      '0' + hour.abs.to_s
    else
      hour.to_s
    end
  end

  def build_minute(minute)
    if minute < 10
      '0' + minute.to_s
    else
      'hi'
    end
  end
end
