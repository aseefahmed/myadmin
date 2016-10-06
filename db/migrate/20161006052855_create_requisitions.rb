class CreateRequisitions < ActiveRecord::Migration[5.0]
  def change
    create_table :requisitions do |t|
      t.string 'requisition_type'
      t.string 'name'
      t.integer 'forwarded_to'
      t.integer 'sender_id'
      t.float 'requested_amount'
      t.float 'approved_amount'
      t.boolean 'flag'
      t.timestamps
    end
  end
end
