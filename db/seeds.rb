
Student.destroy_all
Teacher.destroy_all


goodman = Teacher.create(last_name: "goodman", grade_level: "third", years_of_experience: 5)
willson = Teacher.create(last_name: "Willson", grade_level: "fifth", years_of_experience: 3)


robert = Student.new(first_name: "Robert", last_name:"Nixon", grade_level: "first", teacher: willson)
robert.save
Student.create(first_name: "Jeremy", last_name: "Anton", grade_level: "third", teacher: willson)
  
 

# using .create instead of .new
# if we use ,new we have to say .save 