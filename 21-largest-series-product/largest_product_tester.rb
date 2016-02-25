class LargestProduct
    def self.calculate_largest_product(string, n)
        numbers = string.split('')
        max_product = 0
        numbers.each_with_index do |number, index|
            sum = numbers[index..index + (n - 1)].map{|number| number.to_i}.inject(:*)
            if sum > max_product
                max_product = sum
            end
        end
        max_product
    end
end

puts LargestProduct.calculate_largest_product('0123456789', 3   )