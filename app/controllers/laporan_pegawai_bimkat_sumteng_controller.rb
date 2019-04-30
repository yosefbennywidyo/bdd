class LaporanPegawaiBimkatSumtengController < ApplicationController
  before_action :authenticate_pengguna!
  before_action :set_laporan_pegawai_bimkat_sumteng, only: [:show, :edit, :update, :destroy]

  # GET /laporan_pegawai_bimkat_sumteng
  # GET /laporan_pegawai_bimkat_sumteng.json
  def index
    @laporan_pegawai_bimkat_sumteng = LaporanPegawaiBimkatSumteng.order("created_at DESC").page(params[:daftar_laporan_pegawai_bimkat_sumteng_page]).per(6)
  end

  # GET /laporan_pegawai_bimkat_sumteng/1
  # GET /laporan_pegawai_bimkat_sumteng/1.json
  def show
  end

  # GET /laporan_pegawai_bimkat_sumteng/new
  def new
    @laporan_pegawai_bimkat_sumteng = LaporanPegawaiBimkatSumteng.new
  end

  # GET /laporan_pegawai_bimkat_sumteng/1/edit
  def edit
  end

  # POST /laporan_pegawai_bimkat_sumteng
  # POST /laporan_pegawai_bimkat_sumteng.json
  def create
    @laporan_pegawai_bimkat_sumteng = LaporanPegawaiBimkatSumteng.new(laporan_pegawai_bimkat_sumteng_params)

    respond_to do |format|
      if @laporan_pegawai_bimkat_sumteng.save
        format.html { redirect_to @laporan_pegawai_bimkat_sumteng, notice: 'Laporan pegawai bimkat sumteng was successfully created.' }
        format.json { render :show, status: :created, location: @laporan_pegawai_bimkat_sumteng }
      else
        format.html { render :new }
        format.json { render json: @laporan_pegawai_bimkat_sumteng.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /laporan_pegawai_bimkat_sumteng/1
  # PATCH/PUT /laporan_pegawai_bimkat_sumteng/1.json
  def update
    respond_to do |format|
      if @laporan_pegawai_bimkat_sumteng.update(laporan_pegawai_bimkat_sumteng_params)
        format.html { redirect_to @laporan_pegawai_bimkat_sumteng, notice: 'Laporan pegawai bimkat sumteng was successfully updated.' }
        format.json { render :show, status: :ok, location: @laporan_pegawai_bimkat_sumteng }
      else
        format.html { render :edit }
        format.json { render json: @laporan_pegawai_bimkat_sumteng.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /laporan_pegawai_bimkat_sumteng/1
  # DELETE /laporan_pegawai_bimkat_sumteng/1.json
  def destroy
    @laporan_pegawai_bimkat_sumteng.destroy
    respond_to do |format|
      format.html { redirect_to laporan_pegawai_bimkat_sumteng_index_url, notice: 'Laporan pegawai bimkat sumteng was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_laporan_pegawai_bimkat_sumteng
      @laporan_pegawai_bimkat_sumteng = LaporanPegawaiBimkatSumteng.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def laporan_pegawai_bimkat_sumteng_params
      params.require(:laporan_pegawai_bimkat_sumteng).permit(:judul, :tautan, :pengguna_id)
    end
end
