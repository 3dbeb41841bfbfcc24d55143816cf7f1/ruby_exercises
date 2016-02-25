class DNA
  attr_reader :strand
def initialize(strand)
  @strand = strand
end

def count(nucleotide)
  unless valid_nucleotide?(nucleotide)
    raise ArgumentError.new("#{nucleotide} is not a valid nucleotide")
  end
  strand.scan(nucleotide).count
end

def nucleotide_count
  result = {}
  strand.split('').each do |nucleotide|
    result[nucleotide] = count(nucleotide)
  end
  result
end

def valid_nucleotide?(nucleotide)
  %w(A T G C).include?(nucleotide)
end
end

strand1 = DNA.new('AGTGGCT')
puts strand1.count('A')
puts strand1.nucleotide_count