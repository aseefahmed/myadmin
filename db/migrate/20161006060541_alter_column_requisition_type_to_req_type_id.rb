class AlterColumnRequisitionTypeToReqTypeId < ActiveRecord::Migration[5.0]
  def change
    rename_column(:requisitions, :requisition_type, :requisition_type_id)
  end
end
