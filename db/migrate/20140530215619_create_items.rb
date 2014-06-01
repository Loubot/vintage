class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.float :size
      t.integer :shop_id
      t.float :price
      t.boolean :available

      t.timestamps
    end
  end
end
