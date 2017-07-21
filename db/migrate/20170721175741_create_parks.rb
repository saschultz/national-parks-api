class CreateParks < ActiveRecord::Migration[5.1]
  def change
    create_table :parks do |t|
      t.string :name
      t.string :location
      t.string :free_entrance_days
      t.timestamps
    end
  end
end
