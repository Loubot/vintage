class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :name
      t.integer :merchant_id
      t.string :logo
      t.string :shop_bucket
      t.string :url
      t.string :address
      t.float :lat
      t.float :lat
      t.float :lon
      t.string :facebook
      t.string :twitter
      t.text :description
      t.string :avatar, :string

      t.timestamps
    end
  end
end
