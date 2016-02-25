require 'pry'
class DNA
    attr_accessor :code
    def initialize(code)
        @code = code
    end

    def count(letter)
        unless ['A', 'G', 'C', 'U', 'T'].include? letter
            raise ArgumentError.new("#{letter} is not a nucleotide.")
        end
        @code.split('').select{|code| code == letter}.count
    end

    def nucleotide_counts
        count_hash = {}
        @code.split('').each do |code|
            count_hash[code] = count(code)
        end
        puts count_hash
    end
end

puts dna = DNA.new('ATGTAAG')
puts dna.count('A')
# puts dna.count('F')
dna.nucleotide_counts