class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!
  
  protected

  def configure_permitted_parameters
    registration_params = [:email, :name, :phone, :password, :password_confirmation]
    devise_parameter_sanitizer.for(:sign_up) { 
        |u| u.permit(registration_params)
      }
    devise_parameter_sanitizer.for(:account_update) { 
        |u| u.permit(registration_params << :current_password)
      }
     
  end



end
