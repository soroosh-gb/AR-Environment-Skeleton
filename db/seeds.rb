
Student.destroy_all
Teacher.destroy_all
GradeLevel.destroy_all
Classroom.destroy_all
Test.destroy_all


goodman = Teacher.create(last_name: "goodman", grade_level: "third", years_of_experience: 5)
willson = Teacher.create(last_name: "Willson", grade_level: "fifth", years_of_experience: 3)
koch = Teacher.create(last_name: "koch", grade_level: "first", years_of_experience: 10)

robert = Student.create(first_name: "Robert", last_name:"Nixon", grade_level: "fifth")
jeremy = Student.create(first_name: "Jeremy", last_name: "Anton", grade_level: "third")
anna = Student.create(first_name: "Anna", last_name: "Martin", grade_level: "first")

test_math = Test.create(title: "math")
test_music = Test.create(title: "music theory")

class01 = Classroom.create(capacity: 12, room_number: 01)
class02 = Classroom.create(capacity: 15, room_number: 02)

GradeLevel.create(teacher_id:goodman.id, student_id:jeremy.id, test_id: test_math.id, classroom: class01)
GradeLevel.create(teacher_id:willson.id, student_id:robert.id, test_id: test_music.id, classroom: class01)
GradeLevel.create(teacher_id:koch.id, student_id:anna.id, test_id: test_music.id, classroom: class02)
# using .create instead of .new
# if we use ,new we have to say .save 