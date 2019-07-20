class CreateGazooies < ActiveRecord::Migration[5.2]
  def change
    create_table :gazooies do |t|
      t.text :text

      t.timestamps
    end
  end
end
