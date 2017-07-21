class CreateHikes < ActiveRecord::Migration[5.1]
  def change
    create_table :hikes do |t|
      t.string :name
      t.float :miles
      t.string :difficulty
      t.integer :park_id
      t.timestamps
    end
  end
end
