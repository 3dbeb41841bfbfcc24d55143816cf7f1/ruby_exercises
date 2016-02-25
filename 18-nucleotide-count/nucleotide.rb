require 'pry'
class DNA
  attr_reader :strand
  def initialize(strand)
    @strand = strand
  end

  def count(nucleotide)
    unless nucleotide_valid?(nucleotide)
      raise ArgumentError.new("#{nucleotide} is not valid!")
    end
    strand.count(nucleotide)
  end

  def nucleotide_counts
    result = {}
    strand.split('').each do |nucleotide|
      result[nucleotide] = count(nucleotide)
    end
    result
  end

  def nucleotide_valid?(nucleotide)
    %w(A T C U G).include?(nucleotide)
  end
end

s = "AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC"
puts dna = DNA.new(s)
puts dna.count('G')
puts dna.nucleotide_counts

binding.pry