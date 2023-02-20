require_relative '../lib/author.rb'
require_relative '../lib/magazine.rb'
require_relative '../lib/articles.rb'


# creating  authors
author1 = Author.new("Ken Walibora")
author2 = Author.new("Chinua Achebe")

# create magazines
magazine1 = Magazine.new("Taifa Leo", "Na hadithi Nyingine")
magazine2 = Magazine.new("Standard", "nation house")
magazine3 = Magazine.new("Cheat Sheet", "Review ORM in Ruby")

# add articles and associate them with authors and magazines
author1.add_article(magazine1, "New Discoveries in Technology")
author1.add_article(magazine2, "The Latest Fashion Trends")
author2.add_article(magazine3, "New Fictional Short Stories")
author2.add_article(magazine1, "Exploring the Ocean")


# test some methods
puts "Articles for author1: #{author1.articles.map(&:title)}"
puts "Magazines for author1: #{author1.magazines.map(&:name)}"
puts "Topics for author1: #{author1.topic_areas}"
puts "Magazine1's contributors: #{magazine1.contributors.map(&:name)}"
puts "Article titles for magazine1: #{magazine1.article_titles}"
puts "Contributing authors for magazine1: #{magazine1.contributing_authors.map(&:name)}"