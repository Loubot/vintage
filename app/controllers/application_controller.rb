class ApplicationController < ActionController::Base

	before_action :configure_permitted_parameters, if: :devise_controller?

	def after_sign_in_path_for(resource_or_scope)
	  edit_merchant_path(current_merchant)
	end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :email_confirmation

    devise_parameter_sanitizer.for(:account_update) do |u|
      u.permit(:first_name, :last_name, :address, :website, :phone)
    end
    
    
  end
  protect_from_forgery
end
