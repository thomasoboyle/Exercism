require 'pry'

# Clock solution
class Clock
  attr_accessor :hour, :minute

  def initialize(hour: 0, minute: 0)
    @minute = hour * 60 + minute
    @hour = 60 % @minute
  end

  def to_s
    total_hours + ":" + split_out_minutes(minute)
  end

  def total_hours
    all_hours = split_out_hours(minute)
    if all_hours < 10
      '0' + all_hours.to_s
    else
      all_hours.to_s
    end
  end

  def split_out_hours(minute)
    hours_and_minutes = minute.divmod(60)
    total_hours = hours_and_minutes[0]
    build_hour(total_hours)
  end

  def build_hour(hour)
    if hour < 0
      negative_hour(hour)
    elsif hour > 12
      hour = 24 - hour
      build_hour(hour.abs)
    else
      hour.abs
    end
  end

  def negative_hour(hour)
    if hour > -24
      hour + 24
    elsif hour > -48
      hour = hour.abs
      neg_time = hour - 24
      24 - neg_time
    else
      hour = hour.abs
      neg_time = hour - 24
      24 - neg_time
      build_hour(neg_time)
    end
  end

  def split_out_minutes(minute)
    hours_and_minutes = minute.divmod(60)
    total_minutes = hours_and_minutes[1]
    roll_over_to_hours = hours_and_minutes[0]
    build_minute(total_minutes)
  end

  def build_minute(minute)
    if minute > 60
      roll_over_hours = minutes / 60
    elsif minute < 10
      '0' + minute.to_s
    else
      minute.to_s
    end
  end
end
