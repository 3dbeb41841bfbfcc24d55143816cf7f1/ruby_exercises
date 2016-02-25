# require 'pry'
class LargestProduct
    def self.calculate_product(string, n)
        numbers = string.split('').map{|number| number.to_i}
        max_product = 0
        numbers.each_with_index do |number, index|
            if numbers[index,n].length == n 
                sum = numbers[index,n].inject(:*)
                if sum > max_product
                    max_product = sum
                end
            end
        end
        max_product
    end
end
puts LargestProduct.calculate_product('0123456789', 3)