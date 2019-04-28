json.extract! informasi_berita_terkini, :id, :judul, :keterangan, :tautan, :pengguna_id, :created_at, :updated_at
json.url informasi_berita_terkini_url(informasi_berita_terkini, format: :json)
