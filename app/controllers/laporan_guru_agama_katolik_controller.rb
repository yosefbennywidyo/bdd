class LaporanGuruAgamaKatolikController < ApplicationController
  before_action :authenticate_pengguna!
  before_action :set_laporan_guru_agama_katolik, only: [:show, :edit, :update, :destroy]

  # GET /laporan_guru_agama_katolik
  # GET /laporan_guru_agama_katolik.json
  def index
    @laporan_guru_agama_katolik = LaporanGuruAgamaKatolik.order("created_at DESC").page(params[:data_keagamaan_katolik_page]).per(6)
    @pengguna = current_pengguna
  end

  # GET /laporan_guru_agama_katolik/1
  # GET /laporan_guru_agama_katolik/1.json
  def show
    @pengguna = current_pengguna
  end

  # GET /laporan_guru_agama_katolik/new
  def new
    @laporan_guru_agama_katolik = LaporanGuruAgamaKatolik.new
  end

  # GET /laporan_guru_agama_katolik/1/edit
  def edit
  end

  # POST /laporan_guru_agama_katolik
  # POST /laporan_guru_agama_katolik.json
  def create
    @laporan_guru_agama_katolik = LaporanGuruAgamaKatolik.new(laporan_guru_agama_katolik_params)

    respond_to do |format|
      if @laporan_guru_agama_katolik.save
        format.html { redirect_to @laporan_guru_agama_katolik, notice: 'Laporan guru agama katolik was successfully created.' }
        format.json { render :show, status: :created, location: @laporan_guru_agama_katolik }
      else
        format.html { render :new }
        format.json { render json: @laporan_guru_agama_katolik.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /laporan_guru_agama_katolik/1
  # PATCH/PUT /laporan_guru_agama_katolik/1.json
  def update
    respond_to do |format|
      if @laporan_guru_agama_katolik.update(laporan_guru_agama_katolik_params)
        format.html { redirect_to @laporan_guru_agama_katolik, notice: 'Laporan guru agama katolik was successfully updated.' }
        format.json { render :show, status: :ok, location: @laporan_guru_agama_katolik }
      else
        format.html { render :edit }
        format.json { render json: @laporan_guru_agama_katolik.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /laporan_guru_agama_katolik/1
  # DELETE /laporan_guru_agama_katolik/1.json
  def destroy
    @laporan_guru_agama_katolik.destroy
    respond_to do |format|
      format.html { redirect_to laporan_guru_agama_katolik_index_url, notice: 'Laporan guru agama katolik was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_laporan_guru_agama_katolik
      @laporan_guru_agama_katolik = LaporanGuruAgamaKatolik.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def laporan_guru_agama_katolik_params
      params.require(:laporan_guru_agama_katolik).permit(:judul, :tautan, :pengguna_id)
    end
end
