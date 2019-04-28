class BerandaController < ApplicationController
  def index
  	@data_keagamaan_katolik = DataKeagamaanKatolik.all
  	@data_pendidikan_agama_katolik = DataPendidikanAgamaKatolik.all
  	@informasi_berita_terkini = InformasiBeritaTerkini.all
  	@informasi_pengumuman = InformasiPengumuman.all
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
end
