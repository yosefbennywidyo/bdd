Rails.application.routes.draw do
  resources :informasi_berita_terkini
  resources :data_pendidikan_agama_katolik
  resources :data_keagamaan_katolik
  devise_for :pengguna
	root to: "beranda#index"
  get 'beranda/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
