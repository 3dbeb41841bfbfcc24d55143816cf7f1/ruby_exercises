
  # def beer_song
  #   99.downto(2)do |i| 
  #     if i > 2
  #       puts "There are #{i} bottles of beer on the wall, take one pass it around there are #{i-1} bottles of beer"
  #     else
  #       puts "There are #{i} bottles of beer on the wall, take one pass it around there is #{i-1} bottle of beer"
  #     end
  #   end
  #   puts "There is 1 bottle of beer on the wall, take one pass it around there are no more bottles of beer"
  # end

  # beer_song

 #  class Beer
 #    def self.song

 #    end
 #  end

 # Beer.song
# require 'pry'
# class Person
#   attr_accessor :name

#   def initialize(options)
#     self.name = options[:name]
#   end

#   def talk(words)
#     puts "#{name} says #{words}"
#   end
# end

# p = Person.new name: 'Mathilda'
# binding.pry

#new is a class method, new is a method and Person is a class; 
#Can talk to the cookies that get cut and also talk to the cookie cutter; 
#Hey cookie cutter go and talk to the other cookie cutter and make on

class Beer
  def self.song(number)
    number.downto(2) do |i|
      if i > 2
        puts "I have #{i} bottles of beer on the wall, take one pass it around I have #{i - 1} bottles of beer"
      else
         puts "I have #{i} bottles of beer on the wall, take one pass it around I have #{i - 1} bottle of beer"
      end
    end
      puts "I have 1 more bottle of beer on the wall take one pass it around I have no more bottles of beer"
  end
end

puts "How many bottles of beer do you want to start with on the wall?"
number = gets.chomp.to_i
Beer.song(number)








































# try: `diff -u example.rb solutions/extension1.rb`
class Beer
  def self.song(initial_bottles=99)
    # 99.downto(2) #=> [99, 98, 97, ... , 3, 2]
    # We only go downto 2 because the last line is special
    initial_bottles.downto(2) do |i|
      puts verse(i)
      puts "" # extra newline
    end
    puts last_verse()
  end

  def self.verse(num_bottles)
    return <<-eos
#{num_bottles} bottles of beer on the wall, #{num_bottles} bottles of beer.
Take one down and pass it around, #{num_bottles-1} #{pluralize(num_bottles-1)} of beer on the wall.
    eos
  end

  def self.last_verse
    return <<-eos
1 bottle of beer on the wall, 1 bottle of beer.
Take it down and pass it around, no more bottles of beer on the wall.

No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall.
    eos
  end

  def self.pluralize(num_bottles)
    return "bottles" if num_bottles != 1
    return "bottle"
  end
end

# Reopen the Fixnum class to add an instance method. This is a terrible
# practice but it's very useful to know that it's possible. This is
# called Monkey Patching. In Ruby 2.x there will be a much safer way
# of doing this called Refinements but this is still being worked on.
class Fixnum
  def bottles_of_beer
    Beer.song(self)
  end
end