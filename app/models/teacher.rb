class Teacher < ActiveRecord::Base
    has_many :grade_levels
    has_many :students, through: :grade_levels


    def tenur
        self.years_of_experience > 5
    end

    def student
        grade_levels.map{|gl| gl.student}
    end

end
