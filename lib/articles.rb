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
    @@all.dup.freeze
  end

  
    # instance method that prints out the author, magazine, and title of the Article instance at once 
    def info
      puts "#{author} wrote '#{title}' for '#{magazine}'"
    end
end
  
  # create  instances of the Article class
  article1 = Article.new("kevo", "Fashion", "Latest vitenges")
  article2 = Article.new("Ndoma", "Nature's Best", "The Most Beautiful Beaches in the Kitui")
  article3 = Article.new("Mutua", "Tech wizards daah!", "How to Use AIs")
  
  article1.info
  article2.info
  article3.info
  