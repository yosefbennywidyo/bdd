class GaleriFotoController < ApplicationController
  before_action :authenticate_pengguna!, :except => [:index, :show]
  before_action :set_galeri_foto, only: [:show, :edit, :update, :destroy]

  # GET /galeri_foto
  # GET /galeri_foto.json
  def index
    @galeri_foto = GaleriFoto.order("created_at DESC").page(params[:daftar_galeri_foto_page]).per(6)
  end

  # GET /galeri_foto/1
  # GET /galeri_foto/1.json
  def show
  end

  # GET /galeri_foto/new
  def new
    @galeri_foto = GaleriFoto.new
  end

  # GET /galeri_foto/1/edit
  def edit
  end

  # POST /galeri_foto
  # POST /galeri_foto.json
  def create
    @galeri_foto = GaleriFoto.new(galeri_foto_params)
    @galeri_foto.pengguna_id = current_pengguna.id

    respond_to do |format|
      if @galeri_foto.save
        format.html { redirect_to @galeri_foto, notice: 'Galeri foto was successfully created.' }
        format.json { render :show, status: :created, location: @galeri_foto }
      else
        format.html { render :new }
        format.json { render json: @galeri_foto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /galeri_foto/1
  # PATCH/PUT /galeri_foto/1.json
  def update
    respond_to do |format|
      if @galeri_foto.update(galeri_foto_params)
        format.html { redirect_to @galeri_foto, notice: 'Galeri foto was successfully updated.' }
        format.json { render :show, status: :ok, location: @galeri_foto }
      else
        format.html { render :edit }
        format.json { render json: @galeri_foto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /galeri_foto/1
  # DELETE /galeri_foto/1.json
  def destroy
    @galeri_foto.destroy
    respond_to do |format|
      format.html { redirect_to galeri_foto_index_url, notice: 'Galeri foto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_galeri_foto
      @galeri_foto = GaleriFoto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def galeri_foto_params
      params.require(:galeri_foto).permit(:judul, :keterangan, :tautan, :pengguna_id)
    end
end
