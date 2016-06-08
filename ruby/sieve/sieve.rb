class Sieve
  def initialize(picked_number)
    @picked_number = picked_number
  end


  def primes()
    not_primes = []
    range = (2..@picked_number).to_a
    
    range.map {|number|
      (number..@picked_number).each do |n|
        new_number = number * n
        
        if new_number < @picked_number + 1
          not_primes.push(new_number)
        end

      end
    }
    primes = range - not_primes
  end
end