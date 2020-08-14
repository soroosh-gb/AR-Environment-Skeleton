class AddTeacherIdToStudents < ActiveRecord::Migration[6.0]
  def change
    # add a column to which table? what is the column name and type?
    add_column :students, :teacher_id, :integer
  end
end
