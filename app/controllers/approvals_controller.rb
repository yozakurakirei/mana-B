class ApprovalsController < ApplicationController
  def index
    @approvals = Approval.includes(:admin).all
  end

  def create
    @approval = Approval.new(approval_params)

    if @approval.save
      flash[:success] = "申請が完了しました"
      redirect_to admin_applies_path
    else
      flash.now[:alert] = "申請ができませんでした"
      redirect_to admin_applies_path
    end
  end

  private
    
    def approval_params
      params.permit(:admin_id, :user_id, :apply_id)
    end
end
