class Author 
    def initialize(name)
        @name = name
    end

    def name
        @name
    end
end

author = Author.new("Kelvin Ndoma")
puts author.name