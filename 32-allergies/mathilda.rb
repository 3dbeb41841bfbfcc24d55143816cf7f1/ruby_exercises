class Allergy 
    attr_reader :score, :allergies
    def initialize(score)
        @score = score
        @allergies = {
            :eggs => 1,
            :peanuts => 2,
            :shellfish => 4,
            :strawberries => 8,
            :tomatoes => 16,
            :chocolate => 32,
            :pollen => 64,
            :cats => 128
        }
    end

    def allergic_to?(food)
        if @score == 32
            'yes'
        elsif @score 
        end
    end
end

puts allergies = Allergy.new(34)

puts allergies.allergic_to?('chocolate')