class Multiples
    def self.find_multiples(number, factors)
        multiples_array = []
        (3..number).to_a.each do |number|
            factors.each do |factor|
                multiples_array << number if number % factor == 0
            end
        end
        puts multiples_array
        puts multiples_array.uniq.inject(:+)
    end
end

puts Multiples.find_multiples(15, [3, 5, 7])