alice = {}
alice[:name] = "Alice"
alice[:major] = "Math"
alice[:gpa]= "A"

bob = {}
bob[:name]= "Bob"
bob[:major] = "Music"
bob[:gpa] = "C"

carlos = {}
carlos[:name] = "Carlos" # uh oh! see how this is like guaranteed to lead to bugs? 
carlos[:major] = "English"
carlos[:gpa] = "D"

#okay first of all this is tedium 

students = [ alice, bob, carlos]

students.each do |person|
  puts "#{person[:name]} majors in #{ person[:major] }. GPA: #{person[:gpa]}"
end

