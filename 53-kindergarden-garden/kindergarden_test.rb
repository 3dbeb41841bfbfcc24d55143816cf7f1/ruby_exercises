class Garden
    def initialize(seeds)
        @seeds = seeds.split("\n")
        @students = ["Alice", "Bob", "Charlie", "David", "Eve", "Fred", "Ginny", "Harriet", "Ileana", "Joseph", "Kincaid", "Larry"]
        @student_seed_dictionary = create_student_seed_dictionary
        # create_student_seed_dictionary_methods
    end

    def create_student_seed_dictionary
        student_seed_dictionary = {}
        @seeds[0].split('').zip(@seeds[1].split('')).each_slice(2).with_index do |seed_array_pair, index|
            plant_array = seed_array_pair.flatten.map do |letter|
                plants[letter]
            end
            student_seed_dictionary[@students[index]] = plant_array
        end
        student_seed_dictionary 
    end

    def plants
        {
          'G' => :grass,
          'V' => :violets,
          'R' => :radishes,
          'C' => :clover
        }
    end

    def alice
        @student_seed_dictionary['Alice']
    end

    # def create_student_seed_dictionary_methods
    #     @student_seed_dictionary.each do |key, value|
    #         instance_eval "def #{key.downcase}; #{value}; end"
    #     end
    # end
end

garden = Garden.new("VRCGVVRVCGGCCGVRGCVCGCGV\nVRCCCGCRRGVCGCRVVCVGCGCV")
puts garden.alice
