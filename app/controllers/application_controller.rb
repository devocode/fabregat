class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  protected
  def authenticate_user!
    redirect_to root_path, notice: "No tienes permiso para ver esta página." unless user_signed_in?
  end
end
