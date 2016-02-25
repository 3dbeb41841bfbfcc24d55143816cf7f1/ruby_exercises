class Grandma
    @counter = 0

    def self.grandma_response(cool_beans)
        if cool_beans == "BYE"
            @counter += 1
        elsif cool_beans == cool_beans.upcase
            @counter = 0
            puts "Na not since 19#{rand(30..50)}"
        else
            @counter = 0
            puts "Speak up Sonny"
        end
    end

    def self.speak_to_grandma
        while @counter < 3
            puts "Speak to Grandma:"
            input = gets.chomp
            self.grandma_response(input)
        end
    end
end

Grandma.speak_to_grandma