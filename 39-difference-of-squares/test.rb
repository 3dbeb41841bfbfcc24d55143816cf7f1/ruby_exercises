class Squares
    def initialize(range)
       @number_range = (1..range).to_a
    end

    def sum_square
        @number_range.map{|number| number ** 2}.inject(:+)
    end

    def square_sum
        @number_range.inject(:+) ** 2
    end

    def difference
        square_sum - sum_square
    end
end

puts Squares.new(10).difference