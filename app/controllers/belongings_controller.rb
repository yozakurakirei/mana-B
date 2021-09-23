class BelongingsController < ApplicationController

  def index 
    @belongings = Belonging.where(admin_id: params[:admin_id])
  end

  def create
    @belonging = Belonging.new(belonging_params)

    if @belonging.save
      flash[:success] = "承認が完了しました"
      redirect_to admin_applies_path
    else
      flash.now[:alert] = "承認できませんでした"
      redirect_to admin_applies_path
    end

    # Apply.find(belonging_params[:apply_id]).destroy!
    # redirect_to admin_applies_url(@belonging.admin),
    #             data: { confirm: "受注ID#{@belonging.admin_id}を承認しました" } 
  end

  private 

    def belonging_params
      params.permit(:admin_id, :user_id)
    end
end