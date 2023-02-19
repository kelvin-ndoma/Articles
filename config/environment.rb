
require_relative 'lib/author'
require_relative 'lib/magazine'
require_relative 'lib/article'

# Create a new author
author = Author.new('J.K. Rowling')

# Create some magazines
magazine1= Magazine.new('The Harry Potter Magazine', 'entertainment')
magazine2 = Magazine.new('The Fantasy Magazine', 'literature')

# Add some articles for the author
author.add_article(magazine1, 'The Magic of Hogwarts')
author.add_article(magazine2, 'The Art of Fantasy Writing')

# Print the author's name and their articles and magazines
puts "Author: #{author.name}"
puts "Articles: #{author.articles.map(&:title).join(', ')}"
puts "Magazines: #{author.magazines.map(&:name).join(', ')}"
puts "Topic areas: #{author.topic_areas.join(', ')}"
