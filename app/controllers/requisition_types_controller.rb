class RequisitionTypesController < ApplicationController
  def index
    @requisition_types = RequisitionType.all
    @requisition_type  = RequisitionType.new
  end

  def create
    @requisition_type = RequisitionType.create(requisition_types_params)

    if @requisition_type.save
      flash[:notice] = "You have successfully created a requisition type."
      redirect_to requisition_types_path
    end
  end

  private

  def requisition_types_params
    params.require(:requisition_type).permit(:requisition_type)
  end
end
