class CompaniesController < ApplicationController

  # CSVで保存しても、新規登録で保存してもIDは順番に付与される
  ActiveRecord::Base.connection.execute("SELECT setval('companies_id_seq', coalesce((SELECT MAX(id)+1 FROM companies), 1), false)")

  def index
    @companies = Company.all
    @q = Company.ransack(params[:q])
    @company_result = @q.result(distinct: true).includes(:admins).order("created_at desc")
  end

  def new
    @company = Company.new
  end

  def create
    @company = Company.new(company_params)
    if @company.save
      redirect_to companies_path, { :confirm => "保存しました" }
    else
      render 'new'
    end
  end

  def show
    @company = Company.find(params[:id])
  end


  def edit
    @company = Company.find(params[:id])
  end

  def update
    @company = Company.find(params[:id])
    if @company.update(company_params)
      flash[:success] = "更新しました"
      redirect_to companies_path
    else
      render 'edit'
    end
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

  private

    def company_params
      params.require(:company).permit(:name, :name_kana, :product, :brand,
                                      :fee, :o_fee, :closing, :after, :payment,
                                      :person, :p_tel, :p_tel2, :p_fax, :p_email,
                                      :remarks)
    end
end
