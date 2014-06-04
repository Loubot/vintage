class ChangeItemPriceToDecimal < ActiveRecord::Migration
  def up
    change_table :items do |t|
      t.change :price, :decimal, :precision => 8, :scale => 2
    end
  end

  def down
    change_table :items do |t|
      t.change :price, :float
    end

  end
end