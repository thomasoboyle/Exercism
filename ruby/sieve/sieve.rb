class Sieve
  def initialize(picked_number)
    @picked_number = picked_number
  end


  def primes()
    array = []
    (2..@picked_number).map {|number|
      (number..@picked_number).each do |n|
        new_number = number * n
        
        if new_number < @picked_number
          array.push(new_number)
        end
      end

        # Ensure that each new number is less than picked number
        # store each number in a new array
        # then chech if each item is prime. Return primes.
        # 

      # if number < @picked_number
      #   new_number = number * n
      # else
      #   new_number = [number]
      # end
      # return new_number
      }
    end
end