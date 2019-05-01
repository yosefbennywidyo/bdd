json.extract! galeri_video, :id, :judul, :keterangan, :pengguna_id, :created_at, :updated_at
json.url galeri_video_url(galeri_video, format: :json)
