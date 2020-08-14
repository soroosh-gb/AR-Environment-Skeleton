
Student.destroy_all
Teacher.destroy_all
GradeLevel.destroy_all


goodman = Teacher.create(last_name: "goodman", grade_level: "third", years_of_experience: 5)
willson = Teacher.create(last_name: "Willson", grade_level: "fifth", years_of_experience: 3)


robert = Student.create(first_name: "Robert", last_name:"Nixon", grade_level: "fifth")
jeremy = Student.create(first_name: "Jeremy", last_name: "Anton", grade_level: "third")


GradeLevel.create(teacher_id:goodman.id, student_id:jeremy.id)
GradeLevel.create(teacher_id:willson.id, student_id:robert.id)
# using .create instead of .new
# if we use ,new we have to say .save 