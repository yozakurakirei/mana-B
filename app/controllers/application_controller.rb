class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  # loginユーザーのみ中身を見れる
  before_action :authenticate_user!

  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
    administrators_path
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

    # excel,csv出力
    def excel_export
      respond_to do |format|
        format.html 
        format.xlsx do
          # send_data @admin_result.to_xlsx
          response.headers['Content-Disposition'] = 'attachment; filename="admin_list"'+ Time.zone.now.strftime('%Y-%m-%d-%HH%MM') + '.xlsx'
        end
        format.csv { send_csv @admin_result.to_csv }
      end
    end

    # send_csv
    def send_csv(csv, options = {})
      bom = "   "
      bom.setbyte(0, 0xEF)
      bom.setbyte(1, 0xBB)
      bom.setbyte(2, 0xBF)

      send_data bom + csv.to_s, options
    end
end
