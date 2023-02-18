class Magazine

    attr_accessor :name, :category

    @@all = []

    def initialize(name, category)
        @name = name
        @category = category
        @@all << self
    end

    def self.all
        @@all
    end

    def articles
        Article.all.select { |article| article.magazine == self }
    end
    
    def contributors
        self.articles.map { |article|.author}.uniq
    end

    def info
        puts "#{name} #{category}"
    end





end

magazine = Magazine.new("GQ", "Lifestyle")
magazine.name #=> "GQ"
magazine.category #=> "Lifestyle"

puts magazine.info