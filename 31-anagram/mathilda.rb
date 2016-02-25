class Anagram
    attr_reader :word, :anagram_array
    def initialize(word, anagram_array)
        @word = word
        @anagram_array = anagram_array
    end

    # def anagram_test

    #     @anagram_array.select do |anagram|

    #         # anagram.length == @word.length && (anagram.split('') & @word.split('')).length == anagram.length
    #         my_sort_method(anagram) == @word
    #     end
    # end

    def anagram_test
        #select
        #length
        #intersection operator

        @anagram_array.select do |anagram|
            anagram.length == @word.length && (anagram.split('') & @word.split('')).length == anagram.length
        end
    end

    private
    def my_sort_method(word)
        word.split('').sort
    end
end

puts anagram1 = Anagram.new('listens', ['enlists', 'google', 'inlets' , 'banana'] )
puts anagram1.anagram_test
# anagram1.my_sort_method