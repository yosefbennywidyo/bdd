class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if:  :devise_controller?

	protect_from_forgery with: :exception

	def pengguna_aktif
		@pengguna = current_pengguna
	end

	protected
    # Never trust parameters from the scary internet, only allow the white list through.
	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_in, keys: [:nama_lengkap, :email, :password, :remember_me])
		devise_parameter_sanitizer.permit(:sign_up, keys: [:nama_lengkap, :email, :password, :password_confirmation])
		devise_parameter_sanitizer.permit(:account_update, keys: [:nama_lengkap, :email, :password, :password_confirmation, :current_password])
	end

	# Overwriting the sign_out redirect path method
	def sign_out_and_redirect(pengguna)
		root_path
	end
end
