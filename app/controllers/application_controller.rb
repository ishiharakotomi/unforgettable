class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
   if current_user
      users_theaters_path
   elsif current_admin
      admins_theaters_path
   end
  end

  def after_sign_up_path_for(resource)
   if current_user
      users_theaters_path
   elsif current_admin
      admins_theaters_path
   end
  end

  def after_sign_out_path_for(resource)
  	  users_theaters_path
  end

  protected

  def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :name_kana, :nickname])
  end
end