class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!

  protected

  # This method is used to add additional parameters to the devise sign up form
  # It is used to add the full_name, username and phone_number parameters to the sign up form
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:full_name, :username, :phone_number])
  end
end
