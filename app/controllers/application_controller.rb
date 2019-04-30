class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if:  :devise_controller?

	protect_from_forgery with: :exception

	protected
    # Never trust parameters from the scary internet, only allow the white list through.
	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_in, keys: [:nama_lengkap, :email, :password, :remember_me])
		devise_parameter_sanitizer.permit(:sign_up, keys: [:nama_lengkap, :email, :password, :password_confirmation])
		devise_parameter_sanitizer.permit(:account_update, keys: [:nama_lengkap, :email, :password, :password_confirmation, :current_password])
	end

	# Reditect to a default route when user inputs a wrong one
	
	#rescue_from ActionController::RoutingError do |exception|
	#	logger.error 'Terjadi kesalahan Routing'
	#	redirect_to root_path
	#	render plain: '404 Not found', status: 404 
	#end

	# Overwriting the sign_out redirect path method
	def sign_out_and_redirect(pengguna)
		root_path
	end
end
