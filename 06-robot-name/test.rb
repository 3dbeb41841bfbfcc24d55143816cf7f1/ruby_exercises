
class Robot
    #Create multiple robot objects
    #Assign a name
    #Reset a robot, reassign a new name
    #Count everytime a method is called in the robot
    attr_accessor :instruction_count
    def initialize
        @instruction_count = 0
    end

    def set_name
        prefix = ('A'..'Z').to_a.shuffle[0..1].join('')
        suffix = (100..1000).to_a.sample
        "#{prefix}#{suffix}"
    end

    def name
        @instruction_count += 1
        @name = @name || set_name
    end

    def reset
        @name = nil
    end
end

puts robot1 = Robot.new
puts robot1.instruction_count
puts robot1.name
puts robot1.name
puts robot1.name
robot1.reset
puts robot1.name