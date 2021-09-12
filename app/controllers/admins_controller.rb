class AdminsController < ApplicationController
  def index
    @admins = Admin.includes(:company, :staff).all
  end
  
  def new
    @admin = Admin.new
    @admin.build_report
    @admin.build_condition
  end

  def create
    @admin = Admin.new(admin_params)
    
    if @admin.save
      flash[:success] = "保存が完了しました"
      redirect_to admins_path
    else
      flash.now[:alert] = "保存できませんでした"
      render 'new'
    end
  end

  def show
    @admin = Admin.find(params[:id])
  end

  def edit
    @admin = Admin.find(params[:id])
    @admin.build_report
    @admin.build_condition
  end

  private

    def admin_params
      params.require(:admin).permit(:company_id, :place, :money_remarks,
                                    :place_remarks, :salary, :koutsuhi, :staff_id,
                                    :start, :finish, :first_shift, :start_time,
                                    :finish_time, :salary_kinds,
        report_attributes: [:report_id, :days, :times, :c_costs, :shotei, :choka, :remark,
                             :_destroy, :id],
        condition_attributes: [:holiday, :w_hours, :w_rest, :w_total, :over, :test_period, :_destroy, :id ])
    end
end
