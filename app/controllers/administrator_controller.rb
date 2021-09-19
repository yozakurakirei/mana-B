class AdministratorController < ApplicationController
  def index
    @admin = Apply.includes(:admin).all
  end
end
