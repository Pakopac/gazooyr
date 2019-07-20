class AddUserIdToGazooies < ActiveRecord::Migration[5.2]
  def change
    add_column :gazooies, :user_id, :integer
  end
end
