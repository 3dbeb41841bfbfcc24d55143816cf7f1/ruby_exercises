require 'pry'
class Crypto
    def initialize(message)
        @message = message
    end

    def cipher_message
        plain_text = convert_plain_text
        square = convert_square(plain_text)
        cipher_text(square)
    end

    def convert_plain_text
        @message.split('').map(&:downcase).select do |character|
            /[a-z0-9]+/ =~ character
        end
    end

    def convert_square(plain_text)
        length = Math.sqrt(plain_text.length).ceil
        plain_text.each_slice(length).to_a
    end

    def cipher_text(square)
        cipher_array= []
        square.each do |array|
            array.each_with_index do |character, index|
                cipher_array << character
            end
        end
        binding.pry
        puts cipher_array
    end

end

puts Crypto.new('This is a secret message which only you should be able to 9decrypt!!').cipher_message