class NthPrime
    def initialize(n)
        @n = n
    end

    def find_nth_prime
        @prime_numbers = [2]
        counter = 3
        until @prime_numbers.length == @n
            @prime_numbers << counter if is_prime?(counter)
            counter += 2
        end
        @prime_numbers
    end

    def is_prime?(counter)
        @prime_numbers.each do |number|
            if counter % number == 0
                return false
            elsif
                number > counter / 4
                return true
            end
        end
    end
end

puts NthPrime.new(10001).find_nth_prime