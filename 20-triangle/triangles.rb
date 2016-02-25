class Triangle
    def initialize(sides)
        @sides = sides.sort 
        binding.pry
    end

    def triangle_type
        if @sides[0] <= 0 || @sides[0] + @sides[1] <= @sides[2] || @sides.length != 3
            raise 'This is not a triangle'
        end

        case @sides.uniq.count
        when 1 then :equilateral
        when 2 then :isosceles
        when 3 then :scalene
        end
              
    end
end

triangle1 = Triangle.new([11, 11, 11])
puts triangle1.triangle_type