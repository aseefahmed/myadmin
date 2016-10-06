class CreateRequisitionItems < ActiveRecord::Migration[5.0]
  def change
    create_table :requisition_items do |t|
      t.string 'items_val'
      t.integer 'requisition_id'
      t.timestamps
    end
  end
end
