# encoding: utf-8
class ApplicationController < ActionController::Base
	include Pundit
  protect_from_forgery
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  respond_to :json, :html

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up){ |u| u.permit(:email, :password, :password_confirmation, :first_name, :last_name) }
  end

end
