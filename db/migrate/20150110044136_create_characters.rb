class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.string :realm
      t.string :guild
      t.string :battlegroup
      t.string :region

      t.timestamps
    end
  end
end
