require 'pry'

# Clock solution
class Clock
  attr_accessor :hour, :minute, :roll_over_hours

  def initialize(hour: 0, minute: 0)
    @minute = hour * 60 + minute # convert everything to minutes
    @roll_over_hours = 0
  end

  def to_s
    # this is our formatter. Needs a minute and hour part
    combine_hours_and_minutes
  end

  def combine_hours_and_minutes
    total_hours + ":" + split_out_minutes(minute)
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
    else
      hour.abs
    end
  end

  def total_hours
    all_hours = split_out_hours(minute) + roll_over_hours
    if all_hours < 10
      '0' + all_hours.to_s
    else
      all_hours.to_s
    end
  end

  def build_minute(minute)
    if minute > 60
      roll_over_hours = minutes / 60 # or something
    elsif minute < 10
      '0' + minute.to_s
    else
      minute.to_s
    end
  end
end
