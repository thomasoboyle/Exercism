require 'pry'

class Series
  def initialize(series)
    @series = series
  end

  def slices(slice_length)
    raise ArgumentError if slice_length > series.length
    number_slices = series.length - slice_length + 1

    # number_slices.times.map { |i| series[i, slice_length] }
    
    string = []
    series.split('').each_cons(slice_length) do |a|
      string << a
      string.join
      binding.pry
    end
    string
  end

  private

  attr_accessor :series

end
