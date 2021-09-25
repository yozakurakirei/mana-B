class ApprovalsController < ApplicationController
  def index
    @approvals = Approval.includes(:admin, :user).all
    # @admin = Admin.find(params[:admin_id])
  end

  def create
    @approval = Approval.create(admin_id: approval_params[:admin_id], user_id: approval_params[:user_id])
    flash[:success] = "承認しました"
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
