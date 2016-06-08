class Sieve
  def initialize(picked_number)
    @picked_number = picked_number
  end


  def primes()
    not_primes = []
    range = (2..@picked_number).to_a
    range.map {|number|
      # go from 2 to 3
      (number..@picked_number).each do |n|
        new_number = number * n
        # this multiples the number
        if new_number < @picked_number + 1
          not_primes.push(new_number)
          # not prime numbers in array
        end
      end

        # Ensure that each new number is less than picked number
        # store each number in a new array
        # then chech if each item is prime. Return primes.
      }
      primes = range - not_primes
    end
end