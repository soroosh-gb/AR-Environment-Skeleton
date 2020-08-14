class Student < ActiveRecord::Base
    has_many :grade_levels
    has_many :teachers, through: :grades_levels

    def self.all_in_grade(grade)
        self.all.select{|student| student.grade_level == grade}
    end

    def full_name
        full_name = "#{first_name} #{last_name}"
    end

    def teacher
        
        grade_levels.map{|gl| gl.teacher}
    end

    


end
