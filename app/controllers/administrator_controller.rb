class AdministratorController < ApplicationController
  def index
    @applies = Apply.find_by(admin_id: params[:admin_id])
  end
end
