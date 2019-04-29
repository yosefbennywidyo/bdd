Rails.application.routes.draw do
  resources :laporan_penyuluh_agama_katolik
  resources :laporan_guru_agama_katolik
  resources :informasi_pengumuman
  resources :informasi_berita_terkini
  resources :data_pendidikan_agama_katolik
  resources :data_keagamaan_katolik

  devise_for :pengguna

  as :pengguna do
  	get 'signin', to: 'devise/sessions#new'
  	post 'signin', to: 'devise/sessions#create'
  	delete 'signout', to: 'devise/sessions#destroy'
  end

	root to: "beranda#index"

  get 'beranda/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
