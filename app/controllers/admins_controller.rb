class AdminsController < ApplicationController
  def index
  end
  
  def new
    @admin = Admin.new
  end

  def create
    @admin = Admin.new(admin_params)
    
    if @admin.save
      redirect_to admins_path
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  private

    def admin_params
      params.require(:admin).permit(:company_id, :place, :place_remarks, :salary, :koutsuhi, :staff_id)
    end
end
