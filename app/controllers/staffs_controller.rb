class StaffsController < ApplicationController

  # CSVで保存しても、新規登録で保存してもIDは順番に付与される
  ActiveRecord::Base.connection.execute("SELECT setval('staffs_id_seq', coalesce((SELECT MAX(id)+1 FROM staffs), 1), false)")

  def index
    @staffs = Staff.all
  end
  
  def new
    @staff = Staff.new
  end

  def create
    @staff = Staff.new(staff_params)
    if @staff.save
      redirect_to staffs_path
    else
      render 'new'
    end
  end

  def show
    @staff = Staff.find(params[:id])
  end

  def edit
    @staff = Staff.find(params[:id])
  end

  def destroy
    Staff.find(params[:id]).destroy
    flash[:success] = "スタッフを削除しました"
    redirect_to staffs_path
  end

  def import
    Staff.import(params[:file])
    redirect_to staffs_path
  end

  private 

    def staff_params
      params.require(:staff).permit(:name, :name_kanak, :remarks)
    end
end
