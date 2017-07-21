class AddParkIdToAttractions < ActiveRecord::Migration[5.1]
  def change
    add_column :attractions, :park_id, :integer
  end
end
