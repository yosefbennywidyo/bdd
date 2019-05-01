class BerandaController < ApplicationController  
  def index
  	@data_keagamaan_katolik = DataKeagamaanKatolik.order("created_at DESC").page(params[:data_keagamaan_katolik_page]).per(3)
  	@data_pendidikan_agama_katolik = DataPendidikanAgamaKatolik.order("created_at DESC").page(params[:data_pendidikan_agama_katolik_page]).per(3)
  	@informasi_berita_terkini = InformasiBeritaTerkini.order("created_at DESC").page(params[:informasi_berita_terkini_page]).per(3)
  	@informasi_pengumuman = InformasiPengumuman.order("created_at DESC").page(params[:informasi_pengumuman_page]).per(3)
    @galeri_foto = GaleriFoto.order("created_at DESC").page(params[:galeri_foto_page]).per(3)
    @galeri_video = GaleriVideo.order("created_at DESC").page(params[:galeri_video_page]).per(3)
  end

  	# Use callbacks to share common setup or constraints between actions.
    def set_data_keagamaan_katolik
      @data_keagamaan_katolik = DataKeagamaanKatolik.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def data_keagamaan_katolik_params
      params.require(:data_keagamaan_katolik).permit(:judul, :keterangan, :pengguna_id)
    end

		# Use callbacks to share common setup or constraints between actions.
    def set_data_pendidikan_agama_katolik
      @data_pendidikan_agama_katolik = DataPendidikanAgamaKatolik.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def data_pendidikan_agama_katolik_params
      params.require(:data_pendidikan_agama_katolik).permit(:judul, :keterangan, :pengguna_id)
    end
    
    # Use callbacks to share common setup or constraints between actions.
    def set_informasi_berita_terkini
      @informasi_berita_terkini = InformasiBeritaTerkini.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def informasi_berita_terkini_params
      params.require(:informasi_berita_terkini).permit(:judul, :keterangan, :tautan, :pengguna_id)
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_informasi_pengumuman
      @informasi_pengumuman = InformasiPengumuman.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def informasi_pengumuman_params
      params.require(:informasi_pengumuman).permit(:judul, :keterangan, :tautan, :pengguna_id)
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_galeri_video
      @galeri_video = GaleriVideo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def galeri_video_params
      params.require(:galeri_video).permit(:judul, :keterangan, :pengguna_id)
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_galeri_foto
      @galeri_foto = GaleriFoto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def galeri_foto_params
      params.require(:galeri_foto).permit(:judul, :keterangan, :pengguna_id)
    end

end
