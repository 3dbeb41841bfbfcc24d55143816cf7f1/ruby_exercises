# require 'pry'
class Crypto
    def initialize(message)
        @message = message
    end

    def cipher_message
        plain_text = convert_plain_text
        letter_segments = convert_segments(plain_text)
        cipher(letter_segments)
    end

    def convert_plain_text
        @message.split('').map(&:downcase).select do |character|
            /[a-z]+/ =~ character
        end
    end

    def convert_segments(text)
        length = Math.sqrt(50).ceil
        text.each_slice(length).to_a
    end

    def cipher(segments)
        cipher_hash = {}
        segments.each do |segment|
            segment.each_with_index do |letter, index|
                cipher_hash[index] ||= []
                cipher_hash[index] << letter
            end
        end
        puts cipher_hash.values.join('')
    end
end

puts Crypto.new('I am a secret message!! Nobody should be able to understand me!').cipher_message

