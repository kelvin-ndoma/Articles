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


