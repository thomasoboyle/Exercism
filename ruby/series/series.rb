require 'pry'

class Series
  attr_accessor :series

  def initialize(series)
    @series = series
  end

  def slices(slice_length)
    number_slices = series.length - slice_length + 1
    raise ArgumentError if slice_length > series.length

    number_slices.times.map { |i| series[i, slice_length] }
  end
end
