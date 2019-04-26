class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?  
  # protect_from_forgery, #prepend: true

  def after_sign_in_path_for(resource)
    if user_signed_in?
        if current_user.user_type == "Admin"
          return admin_index_url
        end
      return accounts_show_url
    else
      redirect_to new_user_registration_path
    end
  end
  protected
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name,:email,:phone,:dob,:password,:password_confirmations])
  end
end
