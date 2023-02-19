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
  
    def self.find_by_name(name)
      self.all.find { |magazine| magazine.name == name }
    end
  
    def article_titles
      articles.map { |article| article.title }
    end
  
    def contributors
      articles.map { |article| article.author }.uniq
    end
  
    def contributing_authors
      author_counts = Hash.new(0)
      articles.each do |article|
        author_counts[article.author] += 1
      end
      author_counts.select { |author, count| count > 2 }.keys
    end
  
    private
  
    def articles
      Article.all.select { |article| article.magazine == self }
    end
    
end

# vogue = Magazine.new("Vogue", "Fashion")
# nat_geo = Magazine.new("National Geographic", "Science and Nature")
# wired = Magazine.new("Wired", "Technology")

# # Output the list of all magazines
# puts Magazine.all.inspect

# # Output the name and category of a specific magazine
# puts vogue.name
# puts vogue.category

