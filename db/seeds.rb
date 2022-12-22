# 3.times do |topic|
# 	Topic.create!(
# 		title: "Topic #{topic}")
# end


10.times do |blog|
	Blog.create!(
		title: Faker::Book.title,
		body: Faker::Lorem.sentence(word_count: 3),
		topic_id: Topic.last.id)
	puts "#{Faker::Book.title}"
end

# puts "10 blog post created"

# 5.times do |skill|
# 	Skill.create!(
# 		title: "Rails #{skill}",
# 		percent_utilized: "15"
# 		)
# end
# puts "5 Skills created"


# 8.times do |portfolio_item|
# 	Portfolio.create!(
# 		title: "My portfolio: #{portfolio_item}",
# 		subtitle: "Ruby on rails",
# 		body: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.",
# 		main_image: "https://via.placeholder.com/300x250",
# 		thumb_image: "https://via.placeholder.com/250x150"

# 		)
# end

# 1.times do |portfolio_item|
# 	Portfolio.create!(
# 		title: "My portfolio: #{portfolio_item}",
# 		subtitle: "Angular",
# 		body: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.",
# 		main_image: "https://via.placeholder.com/300x250",
# 		thumb_image: "https://via.placeholder.com/250x150"

# 		)
# end
# puts "9 portfolio items created"


# 3.times do |technology|
# 	Portfolio.last.technologies.create!(
# 		name: "My technology #{technology}")
# end

# puts "3 technology created"