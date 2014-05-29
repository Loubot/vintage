class CreateMerchants < ActiveRecord::Migration
  def change
    create_table :merchants do |t|
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :website
      t.integer :phone

      t.timestamps
    end
  end
end
