# class Magazine
#     attr_accessor :name, :category
  
#     @@all = []
  
#     def initialize(name, category)
#       @name = name
#       @category = category
#       @@all << self
#     end
  
#     def self.all
#       @@all
#     end
  
#     def self.find_by_name(name)
#       self.all.find { |magazine| magazine.name == name }
#     end
  
#     def article_titles
#       articles.map { |article| article.title }
#     end
  
#     def contributors
#       articles.map { |article| article.author }.uniq
#     end
  
#     def contributing_authors
#       author_counts = Hash.new(0)
#       articles.each do |article|
#         author_counts[article.author] += 1
#       end
#       author_counts.select { |author, count| count > 2 }.keys
#     end
  
#     private
  
#     def articles
#       Article.all.select { |article| article.magazine == self }
#     end  
# end

class Magazine
  attr_accessor :name, :category

  @@all = []

  def initialize(name, category)
    @name = name
    @category = category
    @articles = []
    @@all << self
  end

  def self.all
    @@all.dup.freeze
  end

  def self.find_by_name(name)
    all.find { |magazine| magazine.name == name }
  end

  def add_article(article)
    @articles << article
  end

  def article_titles
    @articles.map(&:title)
  end

  def contributors
    @articles.map(&:author).uniq
  end

  def contributing_authors
    author_counts = Hash.new(0)
    @articles.each do |article|
      author_counts[article.author] += 1
    end
    author_counts.select { |_, count| count > 2 }.keys
  end
end

mag1 = Magazine.new("Latest claddies", "Fashion")
mag2= Magazine.new("Ruby", "Rubbing waaaaaaaaaaaaaaaaaaah!")

# Output the name and category of a specific magazine
puts "Name & Category: #{mag1.name} in #{mag1.category}"
puts "Name & Category: #{mag2.name} in #{mag2.category}"


