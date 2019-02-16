require 'pry'

# Clock solution
class Clock
  attr_accessor :hour, :minute

  def initialize(hour: 0, minute: 0)
    @minute = hour * 60 + minute # convert everything to minutes
  end

  def to_s
    # this is our formatter. Needs a minute and hour part
    combine_hours_and_minutes
  end

  def combine_hours_and_minutes
    split_out_hours(minute) + ":" + split_out_minutes(minute)
  end

  def split_out_hours(minute)
    hours_and_minutes = minute.divmod(60)
    total_hours = hours_and_minutes[0]
    build_hour(total_hours)
  end

  def split_out_minutes(minute)
    hours_and_minutes = minute.divmod(60)
    total_minutes = hours_and_minutes[1]
    build_minute(total_minutes)
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
