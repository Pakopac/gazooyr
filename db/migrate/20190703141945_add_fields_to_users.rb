class AddFieldsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :nickname, :string
    add_column :users, :banned, :boolean, default: false
  end
end
