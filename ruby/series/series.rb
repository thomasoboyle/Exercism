class Series
  def initialize(series)
    @series = series
  end

  def slices(slice_length)
    raise ArgumentError if slice_length > series.length

    series.chars.each_cons(slice_length).map(&:join)
  end

  private

  attr_accessor :series

end
