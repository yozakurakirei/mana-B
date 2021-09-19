class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  # loginユーザーのみ中身を見れる
  before_action :authenticate_user!

  def after_sign_in_path_for(resource)
<<<<<<< HEAD
    administrator_index_path
=======
    administrator_index_path	
>>>>>>> 95298757462c6acbd0e6a40542ffc38a4017290a
  end
  
  private

    def configure_permitted_parameters
      added_attrs = [ 
        :name, :email, :password, :password_confirmation
      ]
      devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
      devise_parameter_sanitizer.permit :account_update, keys: added_attrs
      devise_parameter_sanitizer.permit :sign_in, keys: added_attrs
    end
end
