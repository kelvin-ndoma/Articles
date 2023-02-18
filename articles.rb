class Article
    attr_reader :author, :magazine, :title

    @@all = []
    def initialize(author, magazine, title)
        @author = author
        @magazine = magazine
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def info
        puts "#{author} #{magazine} #{title}"
    end

end

articles = Article.new("Mike", "Good morning", "test")
articles.author
articles.magazine
articles.title
puts articles.info