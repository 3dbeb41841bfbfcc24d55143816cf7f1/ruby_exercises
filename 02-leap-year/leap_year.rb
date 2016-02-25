class Year
    attr_reader :year

    def initialize(year)
        @year = year
    end

    def leap?
        puts year
    end
end

y = Year.new(1997)
puts y.leap?
Year.new(1996).leap?

#Attr reader will let you read the year, but it will not let you set it again; 