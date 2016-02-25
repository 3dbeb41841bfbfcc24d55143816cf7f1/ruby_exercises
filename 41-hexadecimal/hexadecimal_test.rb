class Hexadecimal
    def initialize(hexstring)
        @hex = hexstring.split('')
    end

    HEXCONVERTER= {
        'a' => 10,
        'b' => 11,
        'c' => 12,
        'd' => 13,
        'e' => 14,
        'f' => 15
    }

    def convert_decimal
        decimal_sum = 0
        if is_valid?
            @hex.reverse.each_with_index do |h, i|
                h = HEXCONVERTER[h.downcase] if HEXCONVERTER[h]
                decimal_sum += h.to_i * (16 ** i)
            end
        end
        decimal_sum
    end

    def is_valid?
        @hex.each do |character|
            unless /[a-fA-f0-9]+/ =~ character
                return false
            end
        end
        return true
    end
end

puts Hexadecimal.new('f888ab').convert_decimal