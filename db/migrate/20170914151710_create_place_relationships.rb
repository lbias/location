class CreatePlaceRelationships < ActiveRecord::Migration[5.1]
  def change
    create_table :place_relationships do |t|
      t.integer :place_id, :index => true
      t.integer :user_id, :index => true

      t.timestamps
    end
  end
end
