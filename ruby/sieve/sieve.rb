class Sieve
  def initialize(picked_number)
    @picked_number = picked_number
  end


  def primes()
    (2..@picked_number).map {|number|
      (number..@picked_number).each do |n|
      if number < @picked_number
        new_number = number * n
      else
        number = [number]
        return number
      end
      return new_number
     end
    }
  end
end