# require 'pry'
class Crypto
    def initialize(message)
        @message = message
    end

    def cipher_message
        plain_text = convert_plain_text
        text_segments = create_square(plain_text)
        cipher(text_segments)
    end

    def convert_plain_text
        @message.split('').map(&:downcase).select do |character|
            /[a-z0-9]+/ =~ character
        end
    end

    def create_square(plain_text)
        puts length = Math.sqrt(plain_text.length).ceil
        plain_text.each_slice(length).to_a
    end

    def cipher(text_segments)
        cipher_hash = {}
        text_segments.each do |segment|
            segment.each_with_index do |segment, index|
                cipher_hash[index] ||= []
                cipher_hash[index] << segment
            end
        end
        print cipher_hash.values.join('')
    end
end

puts Crypto.new('Yo, This message is a secret and nobody should ever find it!!!').cipher_message