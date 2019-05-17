class Series
  def initialize(series)
    @series = series
  end

  def slices(slice_length)
    raise ArgumentError if slice_length > series.length

    char_array = []
    series.chars.each_cons(slice_length) { |i| char_array << i.join }
    char_array
  end

  private

  attr_accessor :series

end
