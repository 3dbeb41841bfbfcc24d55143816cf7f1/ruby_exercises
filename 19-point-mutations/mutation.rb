# require 'pry'
class DNA
    attr_reader :strand
    def initialize(strand)
        @strand = strand
    end

    def hamming_distance(comparison_strand)
        point_mutations = @strand.split('').zip(comparison_strand.split('')).select do |letter_pair|
            letter_pair[0] != letter_pair[1]
        end
        point_mutations.count

    end

end
puts dna1 = DNA.new('GAGCCTACTAACGGGAT')
puts dna1.hamming_distance('CATCGTAATGACGGCCT')

       # counter = 0
       #  strand_array = @strand.split('')
       #  comparison_strand_array = comparison_strand.split('')
       #  strand_array.each_with_index do |letter, index|
       #      if letter != comparison_strand_array[index]
       #          counter += 1
       #      end
       #  end
       #  counter