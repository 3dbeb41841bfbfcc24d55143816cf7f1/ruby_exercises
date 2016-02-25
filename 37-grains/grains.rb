class Grain

    def square(number)
        2 ** (number -1)
    end

    def total_number_grain
        grain_number = (1..64).to_a.inject do |sum, x| 
           sum + (2 ** (x - 1))
        end
    end
end

puts grain = Grain.new
puts grain.square(64)
puts grain.total_number_grain


1 - 1 # 1
2 - 2 # 2 * 1
3 - 4
4 - 8 # 2 * 3
5 - 16 # 2 * 4
6 - 32 # 2 * 5

#[1, 2, 3].inject {|result, element| result + (element + 10) }