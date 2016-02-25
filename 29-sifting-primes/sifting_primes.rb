class Sieve
    def self.calculate_primes(number)
        numbers = (2..number).to_a
        prime_numbers = []
        until numbers.empty?
            target = numbers.shift
            prime_numbers << target
            numbers.reject! do |number|
                number % target == 0
            end
        end
        prime_numbers
    end
end

puts Sieve.calculate_primes(10)