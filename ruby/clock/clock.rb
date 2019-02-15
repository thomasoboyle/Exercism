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
      build_hour(hour.abs)
    elsif hour < 10
      '0' + hour.abs.to_s
    else
      hour.to_s
    end
  end

  def build_minute(minute)
    hours_and_minutes = minute.divmod(60)
    if hours_and_minutes[0] > 0
      # add hours_and_minutes to hours
    elsif hours_and_minutes[1] < 10
      '0' + hours_and_minutes[1].to_s
    else
      '00'
    end
  end
end
