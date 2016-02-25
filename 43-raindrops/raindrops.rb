#We know that a prime number can only be divided by 1 and itself; 1, 2, 3, 5, 7, 11, 13
#Definition of a factor: a number or quantity that when multiplied with another produces a given number; 2, 3, factors of 6 

#Modulus operator

# 6 % 3 == 0 
# 3 % 6 => 3
# 10 % 5 => 0 
# 5 % 10 => 5

# 9 % 3 => #test if it is a factor; 

class Raindrop
    #If 3 prime factor 'Pling'
    #If 5 prime factor 'Plong'
    #If 7 prime factor 'Plang'
    #Else return number as a string

    def convert(number)
        unless three? number || five? number || seven? number #Unless na
        end
    end

    def three? (number)
        number % 3 == 0
    end

    def five? (number)
        number % 5 == 0
    end

    def seven? (number)
        number % 7 == 0
    end
end

puts raindrop = Raindrop.new
puts raindrop.convert(9)
