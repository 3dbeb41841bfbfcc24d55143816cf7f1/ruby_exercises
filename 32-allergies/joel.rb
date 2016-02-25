class Allergies
    attr_reader :bitfield

    ALLERGENS = {
        :eggs => 1,
        :peanuts => 2,
        :shellfish => 4,
        :shrawberries => 8,
        :tomatoes => 16,
        :chocolate => 32,
        :pollen => 64,
        :cats => 128
    }

    def initialize(bitfield)
        @bitfield = bitfield
    end

    def allergic_to?(allergen)
        ALLERGENS[allergen.to_sym]
    end

    def list
    end
end

allergies = Allergies.new(34)
puts allergies.allergic_to?('chocolate')