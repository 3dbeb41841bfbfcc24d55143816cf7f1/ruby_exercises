# require 'pry'
class RobotPivot
    attr_accessor :orientation, :current_coords_x, :current_coords_y
    def initialize(playzone, orientation, position)
        #Create a new robotPivot, it has co-ordinates, a orientation and poistion on those co-ordinates
        @playzone_coords_x = playzone[0]
        @playzone_coords_y = playzone[1]
        @current_coords_x = position[0]
        @current_coords_y = position[1]
        @orientation = orientation 
        @orientation_array = ['north', 'east', 'south', 'west']
    end

    def advance
        puts @current_coords_x, @current_coords_y, @playzone_coords_y
        if (@current_coords_x == 1 && @current_coords_y == 1) && (@orientation == 'west' || @orientation == 'south')
            puts 'You cannot advance off Robot territory 1'
        elsif (@current_coords_x == @playzone_coords_x && @current_coords_y == 1) && (@orientation == 'east' || @orientation == 'south')
            puts "You cannot advance off Robot territory 2"
        elsif (@current_coords_x == @playzone_coords_x && @current_coords_y == @playzone_coords_y) && (@orientation == 'north' || @orientation == 'east')
            puts "You cannot advance off Robot territory 3"
        elsif (@current_coords_x == 1 && @current_coords_y == @playzone_coords_y) && (@orientation == 'north' || @orientation == 'west')
            puts "You cannot advance off Robot territory 4"
        end
        
        if @orientation == 'east'
            self.current_coords_x += 1
        elsif @orientation == 'west'
            self.current_coords_x -= 1
        elsif @orientation == 'north'
            self.current_coords_y += 1
        elsif @orientation == 'south'
            self.current_coords_y -= 1
        end
    end

    def move_left
        current_index_position = @orientation_array.index(@orientation)
        @position = @orientation_array[current_index_position - 1]
        self.orientation = @position
    end

    def move_right
        current_index_position = @orientation_array.index(@orientation)
        @position = @orientation_array[current_index_position + 1]
        self.orientation = @position
    end
end
puts r = RobotPivot.new([2, 2], 'east' , [1, 2])
puts r.advance
