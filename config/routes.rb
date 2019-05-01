Rails.application.routes.draw do
  resources :galeri_foto
  resources :galeri_video
  resources :laporan_pegawai_bimkat_sumteng
  resources :laporan_penyuluh_agama_katolik
  resources :laporan_guru_agama_katolik
  resources :informasi_pengumuman
  resources :informasi_berita_terkini
  resources :data_pendidikan_agama_katolik
  resources :data_keagamaan_katolik

  # Routes for Google authentication
  devise_for :pengguna, controllers: { omniauth_callbacks: 'pengguna/omniauth_callbacks' }, :path => '', :path_names => { :sign_in => "masuk", :sign_out => "keluar", :sign_up => "mendaftar" }


	root to: "beranda#index"

  get 'beranda/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
