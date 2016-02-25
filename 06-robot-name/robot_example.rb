#multiple robots
#Assign robot name
#Reset the robot and reassign the name
#Count the no. of methods called

class Robot
    attr_accessor :instruction_count
    def initialize
        @instruction_count = 0
    end

    def set_name
        prefix = ('A'..'Z').to_a.shuffle[0..1].join('')
        # ('AA'..'ZZ').to_a.sample (allow duplicates)
        suffix = (100..1000).to_a.sample
        "#{prefix}#{suffix}"
    end

    def name
        @instruction_count += 1
        @name ||= set_name
    end

    def reset
        @instruction_count += 1
        @name = nil
    end
end

puts robot1 = Robot.new
puts robot2 = Robot.new
puts robot1.name
puts robot1.instruction_count
puts robot1.name
puts robot1.instruction_count
puts robot1.name
puts robot1.instruction_count
robot1.reset
puts robot1.name