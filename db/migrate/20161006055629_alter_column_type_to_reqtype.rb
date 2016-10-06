class AlterColumnTypeToReqtype < ActiveRecord::Migration[5.0]
  def change
    rename_column(:requisition_types, :type, :requisition_type)
  end
end
