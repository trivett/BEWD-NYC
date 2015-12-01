
puts "Welcome to Teddit, muthafucka! Give me a news headline that you think is worth a shit."
story = gets.chomp

def calculate_upvotes(story)
  upvotes = 1
  if story.downcase.include?("cat") && story.downcase.include?("bacon")
   upvotes *= 10
  elsif story.downcase.include?("bacon") || story.downcase.include?("cat") 
  	upvotes *= 5
  end
  upvotes
end


puts "New story added! Headline: #{ story }! Upvotes: #{ calculate_upvotes(story) }"