class LaporanPenyuluhAgamaKatolikController < ApplicationController
  before_action :authenticate_pengguna!
  before_action :set_laporan_penyuluh_agama_katolik, only: [:show, :edit, :update, :destroy]

  before_action :cek_pengguna, only: [:edit, :update, :destroy]

  def cek_pengguna
    # find the Laporan Penyuluh Agama Katolik
    @laporan_penyuluh_agama_katolik = LaporanPenyuluhAgamaKatolik.find_by(id: params[:id])
    # find the corrent Pengguna who create current Laporan Penyuluh Agama Katolik
    unless helpers.pengguna_aktif?(@laporan_penyuluh_agama_katolik.pengguna)
      flash[:notice] = 'Maaf, Anda bukan pengguna yang berhak melakukannya'
      # Redirect to page referrer
      redirect_to root_path
    end
  end

  # GET /laporan_penyuluh_agama_katolik
  # GET /laporan_penyuluh_agama_katolik.json
  def index
    @laporan_penyuluh_agama_katolik = LaporanPenyuluhAgamaKatolik.order("created_at DESC").page(params[:daftar_laporan_penyuluh_agama_katolik_page]).per(6)
  end

  # GET /laporan_penyuluh_agama_katolik/1
  # GET /laporan_penyuluh_agama_katolik/1.json
  def show
    @pengguna = current_pengguna
  end

  # GET /laporan_penyuluh_agama_katolik/new
  def new
    @laporan_penyuluh_agama_katolik = LaporanPenyuluhAgamaKatolik.new
  end

  # GET /laporan_penyuluh_agama_katolik/1/edit
  def edit
  end

  # POST /laporan_penyuluh_agama_katolik
  # POST /laporan_penyuluh_agama_katolik.json
  def create
    @laporan_penyuluh_agama_katolik.pengguna_id = current_pengguna.id
    
    respond_to do |format|
      if @laporan_penyuluh_agama_katolik.save
        format.html { redirect_to @laporan_penyuluh_agama_katolik, notice: 'Laporan penyuluh agama katolik was successfully created.' }
        format.json { render :show, status: :created, location: @laporan_penyuluh_agama_katolik }
      else
        format.html { render :new }
        format.json { render json: @laporan_penyuluh_agama_katolik.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /laporan_penyuluh_agama_katolik/1
  # PATCH/PUT /laporan_penyuluh_agama_katolik/1.json
  def update
    respond_to do |format|
      if @laporan_penyuluh_agama_katolik.update(laporan_penyuluh_agama_katolik_params)
        format.html { redirect_to @laporan_penyuluh_agama_katolik, notice: 'Laporan penyuluh agama katolik was successfully updated.' }
        format.json { render :show, status: :ok, location: @laporan_penyuluh_agama_katolik }
      else
        format.html { render :edit }
        format.json { render json: @laporan_penyuluh_agama_katolik.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /laporan_penyuluh_agama_katolik/1
  # DELETE /laporan_penyuluh_agama_katolik/1.json
  def destroy
    @laporan_penyuluh_agama_katolik.destroy
    respond_to do |format|
      format.html { redirect_to laporan_penyuluh_agama_katolik_index_url, notice: 'Laporan penyuluh agama katolik was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_laporan_penyuluh_agama_katolik
      @laporan_penyuluh_agama_katolik = LaporanPenyuluhAgamaKatolik.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def laporan_penyuluh_agama_katolik_params
      params.require(:laporan_penyuluh_agama_katolik).permit(:judul, :tautan, :pengguna_id)
    end
end
