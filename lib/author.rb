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

  def magazines
    @articles.map(&:magazine).uniq
  end

  def topic_areas
    @articles.map { |article| article.magazine.category }.uniq
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

  def contributors
    articles.map(&:author).uniq
  end

  def article_titles
    articles.map(&:title)
  end

  def contributing_authors
    articles.map(&:author).uniq
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

