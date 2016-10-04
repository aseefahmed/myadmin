class AddAttachmentImageToProductStyles < ActiveRecord::Migration
  def self.up
    change_table :product_styles do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :product_styles, :image
  end
end
