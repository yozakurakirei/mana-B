class AdministratorController < ApplicationController
  def index
    @admin = Apply.includes(:admin).all
  end

  def employee
    @users = User.all
  end
end
