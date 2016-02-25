# 1) Create all of the products in a given range
# 2) Check if product is a palidrome
# 3) Return all palidromes
class Palidrome
    attr_reader :start, :end
    def initialize(range)
        @start = range.first
        @end = range.last
    end

    def find_palidromes
        palidromes_array = []
        (@start..@end).to_a.each do |number1|
            (number1..@end).to_a.each do |number2|
                product = number1 * number2
                palidromes_array << product if is_pallidrome?(product)
            end
        end
        palidromes_array
    end

    def is_pallidrome?(product)
        product.to_s == product.to_s.reverse
    end
end

puts palidrome_range = Palidrome.new((1..15))
puts palidrome_range.find_palidromes



