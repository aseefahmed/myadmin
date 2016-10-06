class CreateRequisitionTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :requisition_types do |t|
      t.string 'type'
      t.timestamps
    end
  end
end
