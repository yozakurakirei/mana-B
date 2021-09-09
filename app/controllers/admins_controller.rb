class AdminsController < ApplicationController
  def index
    @admins = Admin.includes(:company, :staff).all
  end
  
  def new
    @admin = Admin.new
    @admin.build_report
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
    @admin = Admin.find(params[:id])
  end

  def edit
    @admin = Admin.find(params[:id])
  end

  private

    def admin_params
      params.require(:admin).permit(:company_id, :place, 
        :place_remarks, :salary, :koutsuhi, :staff_id,
        report_attributes: [:days, :times, :c_costs, :shotei, :choka, :remark,
                             :_destroy, :id])
    end
end
