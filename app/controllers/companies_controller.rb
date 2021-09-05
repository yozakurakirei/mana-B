class CompaniesController < ApplicationController
  def index
    @companies = Company.all
  end

  def show
    @company = Company.find(params[:id])
  end

  def new
    @company = Company.new
  end

  def edit
    @company = Company.find(params[:id])
  end

  def destroy
    Company.find(params[:id]).destroy
    flash[:success] = "削除しました"
    redirect_to companies_path
  end

  def import
    Company.import(params[:file])
    redirect_to companies_path
  end
end
