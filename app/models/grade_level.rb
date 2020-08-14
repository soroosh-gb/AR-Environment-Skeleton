class GradeLevel < ActiveRecord::Base
    belongs_to :teacher
    belongs_to :student
    belongs_to :test
    belongs_to :classroom
end
