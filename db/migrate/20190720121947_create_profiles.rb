class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.belongs_to :user, index: true
      t.string :avatar
      t.string :background
      t.string :name
      t.string :place
      t.string :website
      t.text :bio

      t.timestamps
    end
  end
end
