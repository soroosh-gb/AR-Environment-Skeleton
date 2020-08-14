class Student < ActiveRecord::Base
    has_many :grade_levels
    has_many :teachers, through: :grades_levels
    has_many :tests, through: :gradde_levels

    def self.all_in_grade(grade)
        self.all.select{|student| student.grade_level == grade}
    end

    def full_name
        full_name = "#{first_name} #{last_name}"
    end

    def teacher  
        grade_levels.map{|gl| gl.teacher}
    end

    def tests
        grade_levels.map{|gl| gl.test}
    end

    def classroom
        grade_levels.map{|gr| gr.classroom}
    end

end
