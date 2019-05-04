class Series
  def initialize(series)
    @series = series
  end

  def slices(slice_length)
    raise ArgumentError if slice_length > series.length
    number_slices = series.length - slice_length + 1

    number_slices.times.map {|i| series[i, slice_length] }
  end

  private

  attr_accessor :series

end
