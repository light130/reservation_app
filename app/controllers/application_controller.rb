class ApplicationController < ActionController::Base
  before_action :configure_permitted_paramaters, if: :devise_controller?

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to main_app.root_path, alert: exception.message
  end

  protected

  def configure_permitted_paramaters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :phone_number])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :phone_number])
  end

end
