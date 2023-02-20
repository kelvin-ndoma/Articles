class Author
  attr_reader :name

  def initialize(name)
    @name = name
    @articles = []
  end

  def add_article(magazine, title)
    article = Article.new(self, magazine, title)
    @articles << article
    magazine.add_article(article)
  end

  def articles
    @articles.dup.freeze
  end

  def topic_areas
    magazines.map(&:category).uniq
  end

  def magazines
    articles.map(&:magazine).uniq
  end
end

class Magazine
  attr_reader :name, :category, :articles

  def initialize(name, category)
    @name = name
    @category = category
    @articles = []
  end

  def add_article(article)
    @articles << article
  end
end

class Article
  attr_reader :author, :magazine, :title

  def initialize(author, magazine, title)
    @author = author
    @magazine = magazine
    @title = title
  end
end


author1 = Author.new("J.K. Rowling")
author2 = Author.new("Stephen King")

magazine1 = Magazine.new("Wired", "Technology")
magazine2 = Magazine.new("National Geographic", "Science")
magazine3 = Magazine.new("Vanity Fair", "Culture")

author1.add_article(magazine1, "The Future of Technology")
author1.add_article(magazine2, "The Science of Wildlife Conservation")
author2.add_article(magazine3, "Hollywood's Impact on Culture")

puts author1.magazines
puts author1.topic_areas
puts author2.topic_areas

