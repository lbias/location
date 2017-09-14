class AddFriendIdToUsers < ActiveRecord::Migration[5.1]
  def change
    change_table :users do |t|
      t.references :friend, index: true
    end
  end
end
