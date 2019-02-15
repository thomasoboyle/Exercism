require 'pry'

# Clock solution
class Clock
  attr_accessor :hour, :minute

  def initialize(hour:, minute: 0)
    @hour = hour
    @minute = minute
  end

  def to_s
    build_hour(hour) + ':' + break_down_minutes(minute)
  end

  def break_down_minutes(minute)
    hours_and_minutes = minute.divmod(60)
    rollover_minutes = hours_and_minutes[0]
    total_minutes = hours_and_minutes[1]
  end

  def build_hour(hour)
    # add total_minutes here
    if hour > 12
      hour = 24 - hour
      build_hour(hour.abs)
    elsif hour < 10
      '0' + hour.abs.to_s
    else
      hour.to_s
    end
  end

  # rebuild this method to to use total_minutes
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
