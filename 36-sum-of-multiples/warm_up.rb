# require 'pry'
class Multiples
    # def self.find_multiples(number, multiples)
    #     multiples_array = []
    #     (1...number).to_a.each do |number|
    #         multiples.each do |multiple|
    #             if number % multiple == 0 
    #                 multiples_array << number
    #             end
    #         end
    #     end
    #     multiples_array.uniq.inject(:+)
    # end
    # def find_multiples(number, multiples)

    # end

   # def self.find_multiples(number, multiples)
   #      multiples_array = []
   #      numbers = (1..number).each do |number|
   #          multiples.each do |multiple|
   #              if number % multiple == 0
   #                  multiples_array <<  number
   #              end
   #          end
            
   #      end
   #      puts multiples_array
   #      multiples_array.uniq.inject(:+)  
   # end

   # def self.find_multiples(number, multiples_array)
   #      result = []
   #      (1...number).to_a.each do |num|
   #          multiples_array.each do |multiple|
   #              result << num if num % multiple == 0
   #          end
   #      end
   #      binding.pry
   #      result.uniq.inject(:+)
   #  end

   def self.find_multiples(number, factors)
        multiples_array = []
        (3..number).to_a.each do |number|
            factors.each do |factor|
                if number % factor == 0
                    multiples_array << number
                end
            end
        end

        multiples_array.uniq.inject(:+)
   end
end
# 3 5 6 7 9 10 
# puts multiple = Multiples.find_multiples(10)

puts multiple = Multiples.find_multiples(12, [3, 5, 7])

