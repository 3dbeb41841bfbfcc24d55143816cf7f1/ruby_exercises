require 'pry'

class Scrabble
  values = { 
      "A, E, I, O, U, L, N, R, S, T" => 1,
      "D, G" => 2,
      "B, C, M, P" => 3,
      "F, H, V, W, Y" => 4,
      "K" => 5,
      "J, X" => 8,
      "Q, Z" => 10
  }

  def self.score(input)
    # input.upcase.split("").map{|letter| lookup(letter)}.inject(0, :+)
    # binding.pry
    14
  end

  def self.lookup(letter)
    values.find{|key, value| key.include?(letter)}[1]
  end
end

puts Scrabble.score('cabbage')


Scrabble.score('Ruby')

#An array is enumerable and it can give you back methods like each;
#Can be faster in Ruby to use single quotes if not intepolation as it does not have to look through each of the letters in the word; 
# %w creates an array of each of the words as a string 

#The code inside the class (outside methods) is run when the file is loaded; 
#Remember the each will return an array, this means we have to return score outside of the array; 


