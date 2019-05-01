Rails.application.routes.draw do
  # Routes for Google authentication
  get 'auth/:provider/callback', to: 'sessions#googleAuth’'
  get 'auth/failure', to: redirect('/')

  resources :laporan_pegawai_bimkat_sumteng
  resources :laporan_penyuluh_agama_katolik
  resources :laporan_guru_agama_katolik
  resources :informasi_pengumuman
  resources :informasi_berita_terkini
  resources :data_pendidikan_agama_katolik
  resources :data_keagamaan_katolik

  devise_for :pengguna, :path => '', :path_names => { :sign_in => "masuk", :sign_out => "keluar", :sign_up => "mendaftar" }


	root to: "beranda#index"

  get 'beranda/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
