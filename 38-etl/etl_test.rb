class ETL
    attr_reader :data
    def initialize(data=nil)
        @data = data || {
              1 => %W(A E I O U L N R S T),
              2 => %W(D G),
              3 => %W(B C M P),
              4 => %W(F H V W Y),
              5 => %W(K),
              8 => %W(J X),
              10 => %W(Q Z)
            }
    end
    def transform
        transform_hash = {}
        @data.each do |number, value|
            value.each do |letter|
                transform_hash[letter.downcase] = number
            end
        end
        Hash[transform_hash.sort]
    end
end
puts ETL.new({
  200 => %W(A E I O U L N R S T),
  2 => %W(D G),
  3 => %W(B C M P),
  4 => %W(F H V W Y),
  5 => %W(K),
  8 => %W(J X),
  10 => %W(Q Z)
}).transform