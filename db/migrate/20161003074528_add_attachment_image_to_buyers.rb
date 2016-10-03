class AddAttachmentImageToBuyers < ActiveRecord::Migration
  def self.up
    change_table :buyers do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :buyers, :image
  end
end
