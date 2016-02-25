class Grain
    def square(number)
       2 ** (number - 1)
    end

    def total_grain
        (2..64).to_a.inject do |sum, number|
            sum + (2 ** (number - 1))
        end
    end
end

puts grain = Grain.new
puts grain.square(64)
puts grain.total_grain