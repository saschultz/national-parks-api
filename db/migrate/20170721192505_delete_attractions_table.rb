class DeleteAttractionsTable < ActiveRecord::Migration[5.1]
  def change
    drop_table :attractions
  end
end
