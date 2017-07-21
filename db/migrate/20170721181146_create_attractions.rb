class CreateAttractions < ActiveRecord::Migration[5.1]
  def change
    create_table :attractions do |t|
      t.string :hikes
      t.string :wildlife
      t.string :natural_wonders
      t.timestamps
    end
  end
end
