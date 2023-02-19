class Article
    # declare reader methods for the author, magazine, and title instance variables
    attr_reader :author, :magazine, :title
  
    # class variable to keep track of all Article instances that are created
    @@all = []
  
    # constructor method that initializes an Article instance with an author, magazine, and title
    def initialize(author, magazine, title)
      @author = author
      @magazine = magazine
      @title = title
      # add the new Article instance to the array of all Article instances
      @@all << self
    end
  
    # class method to access the array of all Article instances
    def self.all
      @@all
    end
  
    # instance method that prints out the author, magazine, and title of the Article instance
    def info
      puts "#{author} wrote '#{title}' for '#{magazine}'"
    end
  end
  
#   # create a few instances of the Article class
#   article1 = Article.new("Alice", "Fashion Monthly", "The Latest Trends in High Heels")
#   article2 = Article.new("Bob", "Nature's Best", "The Most Beautiful Beaches in the World")
#   article3 = Article.new("Charlie", "Tech Now", "How to Secure Your Online Accounts")
  
#   # call the info method on each article to display its details
#   article1.info
#   article2.info
#   article3.info
  