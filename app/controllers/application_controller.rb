class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  protected

  def authenticate_user!
    redirect_to root_path, notice: "No tienes permiso para ver esta página." unless user_signed_in?
  end

  def after_sign_in_path_for(resource)
	  leads_path
	end
end
