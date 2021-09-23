class ApprovalsController < ApplicationController
  def index
    @approvals = Approval.includes(:admin, :user).all
  end

  def create
    @approval = current_user.approvals.create(admin_id: approval_params[:admin_id], user_id: approval_params[:user_id])
    redirect_to admin_applies_url(@approval.admin)
  end

  def destroy
    @approval = Approval.find(params[:id])
    @approval.destroy
    @admin = Admin.find(params[:admin_id])
    redirect_to admin_url(@admin), data: { confirm: "申請を取り下げました" }
  end

  private
    
    def approval_params
      params.permit(:admin_id, :user_id, :apply_id)
    end
end
