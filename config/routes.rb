Rails.application.routes.draw do
  devise_for :pengguna
	root to: "beranda#index"
  get 'beranda/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
