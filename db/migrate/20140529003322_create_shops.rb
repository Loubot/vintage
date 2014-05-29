class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :name
      t.string :logo
      t.string :url
      t.string :address
      t.float :lat
      t.float :lat
      t.float :lon
      t.string :facebook
      t.string :twitter

      t.timestamps
    end
  end
end
