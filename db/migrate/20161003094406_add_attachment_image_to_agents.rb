class AddAttachmentImageToAgents < ActiveRecord::Migration
  def self.up
    change_table :agents do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :agents, :image
  end
end
