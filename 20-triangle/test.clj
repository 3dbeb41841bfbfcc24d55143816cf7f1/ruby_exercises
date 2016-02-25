(load-file "triangle.clj")
(assert (= :equilateral (triangle 2 2 2)))
(assert (= :equilateral (triangle 10 10 10)))
(assert (= :isosceles (triangle 3 4 4)))
(assert (= :isosceles (triangle 4 3 4)))
(assert (= :scalene (triangle 3 4 5)))
(assert (= :illogical (triangle 1 1 50)))
(assert (= :illogical (triangle 1 2 1)))
# class Triangle

#     def initialize(sides)
#         @sides = sides.sort
#         # binding.pry
#     end

#     def triangle_type
#         if @sides[0] < 1 || @sides[0] + @sides[1] <= @sides[2]
#             raise 'This is not a triangle'
#         end

#         case @sides.uniq.count
#         when 1 then 'equilateral'
#         when 2 then 'isoceles'
#         when 3 then 'scalene'
#         end
#     end
# end

# traingle1 = Triangle.new([-4, 12, 13])
# puts traingle1.triangle_type

class Triangle
    def initialize(sides)
        @sides = sides.sort
    end

    def triangle_type
        if @sides[0] < 1 || @sides[0] + @sides[1] <= @sides[2]
            raise 'This is not a triangle'
        end

        if @sides[0] == @sides[2]
            'equilatera;'
    end
end