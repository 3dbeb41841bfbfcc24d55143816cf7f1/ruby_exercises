require 'pry'
class Phone
    attr_accessor :number
    def initialize(number)
        @number = number.gsub(/[^\d]/, '')
    end

    # def convert_phone_number(number)
    #     number.split('').select do |number| 
    #         binding.pry
    #         number.to_i.class == Fixnum
    #     end
    # end

    # def number
    #     @number.select {|num| num.to_i > 0 }.join
    # end
end

phone = Phone.new("(123) 456-7890")