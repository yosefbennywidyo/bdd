module ControllerHelpers
	def log_in(pengguna)
		warden = request.env[‘warden’]
		allow(warden).to receive(:authenticate!).and_return(pengguna)
		allow(controller).to receive(:current_pengguna).and_return(pengguna)
	end
end