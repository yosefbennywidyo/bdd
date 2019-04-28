class InformasiPengumumanController < ApplicationController
  before_action :set_informasi_pengumuman, only: [:show, :edit, :update, :destroy]

  # GET /informasi_pengumuman
  # GET /informasi_pengumuman.json
  def index
    @informasi_pengumuman = InformasiPengumuman.all
  end

  # GET /informasi_pengumuman/1
  # GET /informasi_pengumuman/1.json
  def show
  end

  # GET /informasi_pengumuman/new
  def new
    @informasi_pengumuman = InformasiPengumuman.new
  end

  # GET /informasi_pengumuman/1/edit
  def edit
  end

  # POST /informasi_pengumuman
  # POST /informasi_pengumuman.json
  def create
    @informasi_pengumuman.pengguna_id = current_pengguna.id
    
    respond_to do |format|
      if @informasi_pengumuman.save
        format.html { redirect_to @informasi_pengumuman, notice: 'Informasi pengumuman was successfully created.' }
        format.json { render :show, status: :created, location: @informasi_pengumuman }
      else
        format.html { render :new }
        format.json { render json: @informasi_pengumuman.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /informasi_pengumuman/1
  # PATCH/PUT /informasi_pengumuman/1.json
  def update
    respond_to do |format|
      if @informasi_pengumuman.update(informasi_pengumuman_params)
        format.html { redirect_to @informasi_pengumuman, notice: 'Informasi pengumuman was successfully updated.' }
        format.json { render :show, status: :ok, location: @informasi_pengumuman }
      else
        format.html { render :edit }
        format.json { render json: @informasi_pengumuman.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /informasi_pengumuman/1
  # DELETE /informasi_pengumuman/1.json
  def destroy
    @informasi_pengumuman.destroy
    respond_to do |format|
      format.html { redirect_to informasi_pengumuman_index_url, notice: 'Informasi pengumuman was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_informasi_pengumuman
      @informasi_pengumuman = InformasiPengumuman.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def informasi_pengumuman_params
      params.require(:informasi_pengumuman).permit(:judul, :keterangan, :tautan, :pengguna_id)
    end
end
