class AdministratorsController < ApplicationController
  def index
    @admin = Apply.includes(:admin).all
  end

  def employee
    @users = User.all
  end

  def new
  end

  def edit
  end

  def show
  end
end
