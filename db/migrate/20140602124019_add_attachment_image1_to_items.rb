class AddAttachmentImage1ToItems < ActiveRecord::Migration
  def self.up
    change_table :items do |t|
      t.attachment :image1
    end
  end

  def self.down
    drop_attached_file :items, :image1
  end
end
