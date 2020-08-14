class TestsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :tests do |t|
      t.string :title
    end
  end
end
