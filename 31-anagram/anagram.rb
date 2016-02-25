class Anagram
    attr_reader :word, :anagram_array
    def initialize(word, anagram_array)
        @word = my_sorting_method(word)
        @anagram_array = anagram_array
    end

    def anagram_test
        #select
        #length
        #intersection operator
        @anagram_array.select do |anagram|
            #anagram.length == @word.length && (anagram.split('') & @word.split('')).length == anagram.length
            my_sorting_method(anagram) == @word
        end
    end

    private
    def my_sorting_method(word_to_sort)
        word_to_sort.split('').sort
    end
end

puts anagram1 = Anagram.new('listens', ['enlists', 'google', 'inlets', 'banana'] )

puts anagram1.anagram_test
anagram1.my_sorting_method

























# ['enlists', 'google', 'inlets', 'banana']