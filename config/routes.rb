Rails.application.routes.draw do
  resources :laporan_pegawai_bimkat_sumteng
  resources :laporan_penyuluh_agama_katolik
  resources :laporan_guru_agama_katolik
  resources :informasi_pengumuman
  resources :informasi_berita_terkini
  resources :data_pendidikan_agama_katolik
  resources :data_keagamaan_katolik

  match "*path", to: "beranda#catch_404", via: :all

  devise_for :pengguna

	root to: "beranda#index"

  get 'beranda/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
