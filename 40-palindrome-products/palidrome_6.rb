# require 'pry'
class Palidrome
    def initialize(range)
        @start = range[0]
        @end = range[1]
    end

    def find_palidromes
        palidrome_array = []
        (@start..@end).to_a.each do |number1|
            (number1..@end).to_a.each do |number2|
                product = number1 * number2
                palidrome_array << product if is_palidrome?(product)
            end
        end
        palidrome_array
    end

    def is_palidrome?(product)
        digits_array = product.to_s.split('').map(&:to_i)
        until digits_array.empty?
            if digits_array.shift != digits_array.pop
                return false
            end
        end
        return true
    end
end

palidrome_range = Palidrome.new([1,99])
puts palidrome_range.find_palidromes