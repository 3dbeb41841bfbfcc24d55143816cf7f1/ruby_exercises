class Squares
    def initialize(range)
        @numbers_range = (1..range).to_a
    end

    def sum_square
         @numbers_range.map{|number| number ** 2}.inject(:+)
    end

    def square_sum
        @numbers_range.inject(:+) ** 2
    end

    def difference
        puts square_sum - sum_square
    end
end

puts Squares.new(100).difference