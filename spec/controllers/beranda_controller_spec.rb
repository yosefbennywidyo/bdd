require 'rails_helper'

RSpec.describe BerandaController, type: :controller do

	# let: define memoized helper method
	# instance_double: is the most common type of verifying double
	let(:pengguna) { instance_double(Pengguna) }
	before { log_in(pengguna) }

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

end
