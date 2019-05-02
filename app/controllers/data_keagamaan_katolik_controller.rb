class DataKeagamaanKatolikController < ApplicationController
  before_action :authenticate_pengguna!, :except => [:index, :show]
  before_action :set_data_keagamaan_katolik, only: [:show, :edit, :update, :destroy]

  # GET /data_keagamaan_katolik
  # GET /data_keagamaan_katolik.json
  def index
    @data_keagamaan_katolik = DataKeagamaanKatolik.order("created_at DESC").page(params[:daftar_data_keagamaan_katolik_page]).per(6)
  end

  # GET /data_keagamaan_katolik/1
  # GET /data_keagamaan_katolik/1.json
  def show
    @pengguna = current_pengguna
  end

  # GET /data_keagamaan_katolik/new
  def new
    @data_keagamaan_katolik = DataKeagamaanKatolik.new
  end

  # GET /data_keagamaan_katolik/1/edit
  def edit
  end

  # POST /data_keagamaan_katolik
  # POST /data_keagamaan_katolik.json
  def create
    @laporan_pegawai_bimkat_sumteng = LaporanPegawaiBimkatSumteng.new(laporan_pegawai_bimkat_sumteng_params)
    @data_keagamaan_katolik.pengguna_id = current_pengguna.id

    respond_to do |format|
      if @data_keagamaan_katolik.save
        format.html { redirect_to @data_keagamaan_katolik, notice: 'Data keagamaan katolik was successfully created.' }
        format.json { render :show, status: :created, location: @data_keagamaan_katolik }
      else
        format.html { render :new }
        format.json { render json: @data_keagamaan_katolik.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /data_keagamaan_katolik/1
  # PATCH/PUT /data_keagamaan_katolik/1.json
  def update
    respond_to do |format|
      if @data_keagamaan_katolik.update(data_keagamaan_katolik_params)
        format.html { redirect_to @data_keagamaan_katolik, notice: 'Data keagamaan katolik was successfully updated.' }
        format.json { render :show, status: :ok, location: @data_keagamaan_katolik }
      else
        format.html { render :edit }
        format.json { render json: @data_keagamaan_katolik.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /data_keagamaan_katolik/1
  # DELETE /data_keagamaan_katolik/1.json
  def destroy
    @data_keagamaan_katolik.destroy
    respond_to do |format|
      format.html { redirect_to data_keagamaan_katolik_index_url, notice: 'Data keagamaan katolik was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_data_keagamaan_katolik
      @data_keagamaan_katolik = DataKeagamaanKatolik.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def data_keagamaan_katolik_params
      params.require(:data_keagamaan_katolik).permit(:judul, :keterangan, :tautan, :pengguna_id)
    end
end
