class ClassroomsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :classrooms do |t|
      t.integer  :capacity
      t.integer  :room_number
    end
  end
end
