class Garden
  attr_accessor :seeds

  def initialize(seeds)
    @seeds = seeds.split("\n")
    @children = %w(Alice Bob Charlie David Eve Fred Ginny Harriet Ileana Joseph
Kincaid Larry).sort
    find_student
  end

  def calculate_seed_owners
    plants_hash = {}
    result = @seeds[0].split('').zip(@seeds[1].split(''))
    result.each_slice(2).with_index do |pair, index|
      plants_hash[@children[index]] = pair.flatten.map {|letter| plants[letter]}
      index += 1
    end
    plants_hash
  end

  def plants
    {
      'G' => :grass,
      'V' => :violets,
      'R' => :radishes,
      'C' => :clover
    }
  end

  def find_student
    calculate_seed_owners.each do |key, value|
      instance_eval "def #{key.downcase}; #{value}; end"
    end
  end
end

garden = Garden.new("VRCGVVRVCGGCCGVRGCVCGCGV\nVRCCCGCRRGVCGCRVVCVGCGCV")
garden.calculate_seed_owners
puts garden.alice