class Series
  def initialize(series)
    @series = series
  end

  def slices(slice_length)
    raise ArgumentError if slice_length > series.length
    array = []

    series.split('').each_cons(slice_length) do |a|
      array << a.join
      array
    end
    array
  end

  private

  attr_accessor :series

end
