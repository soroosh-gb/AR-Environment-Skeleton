class AddColumnToGradeLevelsTable < ActiveRecord::Migration[6.0]
  def change
    add_column :grade_levels, :test_id, :integer
    add_column :grade_levels, :classroom_id, :integer
  end
end
