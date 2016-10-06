class RequisitionsController < ApplicationController
  def index
    @requisitions = Requisition.all
    @requisition_types = RequisitionType.all
    @requisition  = Requisition.new
  end
end
