class BelongingsController < ApplicationController

  def index 
    @belongings = Belonging.where(admin_id: params[:admin_id])
  end

  def create
    @belongings = Belonging.create(admin_id: belonging_params[:admin_id],
                 user_id: belonging_params[:user_id])
    Apply.find(belonging_params[:apply_id]).destroy!
    redirect_to admin_applies_url(@belonging.admin), notice: "受注ID#{@belonging.admin_id}を承認しました"
  end

  private 

    def belonging_params
      params.permit(:admin_id, :user_id, :apply_id)
    end
end