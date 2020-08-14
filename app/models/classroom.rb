class Classroom < ActiveRecord::Base
    has_many :grade_levels
    has_many :students, through: :grade_levels
    has_many :teachers, through: :grade_levels

    # def students
        
    # end

end