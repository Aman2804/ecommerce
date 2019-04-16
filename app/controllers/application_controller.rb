class ApplicationController < ActionController::Base
  before_action :authenticate_user!, if: :devise_controller?  
  # protect_from_forgery, #prepend: true

  def after_sign_in_path_for(resource)
    if user_signed_in?
      byebug
      return accounts_show_url(user.id)
    else
      redirect_to new_user_registration_path
    end
  end
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
  