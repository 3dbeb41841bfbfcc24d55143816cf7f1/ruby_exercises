# require 'pry'

class Bob
    def self.question(arg)
        words =  arg.split(' ')
        # binding.pry
        if words[0] == "Bro"
            "l33t sP34k for you"
        else
            "sure"
        end
    end

    def self.tell(arg)
        "Whatever"
    end

    def self.yell(arg)
        "Waoh, chill out"
    end

    def self.silent
        "Fine, be that way"
    end
end


puts "#{Bob.question('Do you like peanuts')}"
puts "#{Bob.question('Bro where are you?')}"
puts "#{Bob.tell('You are very quiet')}"
puts "#{Bob.yell('Cheer up Bob')}"
puts "#{Bob.silent}"