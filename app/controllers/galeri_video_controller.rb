class GaleriVideoController < ApplicationController
  before_action :set_galeri_video, only: [:show, :edit, :update, :destroy]

  # GET /galeri_video
  # GET /galeri_video.json
  def index
    @galeri_video = GaleriVideo.all
  end

  # GET /galeri_video/1
  # GET /galeri_video/1.json
  def show
  end

  # GET /galeri_video/new
  def new
    @galeri_video = GaleriVideo.new
  end

  # GET /galeri_video/1/edit
  def edit
  end

  # POST /galeri_video
  # POST /galeri_video.json
  def create
    @galeri_video = GaleriVideo.new(galeri_video_params)

    respond_to do |format|
      if @galeri_video.save
        format.html { redirect_to @galeri_video, notice: 'Galeri video was successfully created.' }
        format.json { render :show, status: :created, location: @galeri_video }
      else
        format.html { render :new }
        format.json { render json: @galeri_video.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /galeri_video/1
  # PATCH/PUT /galeri_video/1.json
  def update
    respond_to do |format|
      if @galeri_video.update(galeri_video_params)
        format.html { redirect_to @galeri_video, notice: 'Galeri video was successfully updated.' }
        format.json { render :show, status: :ok, location: @galeri_video }
      else
        format.html { render :edit }
        format.json { render json: @galeri_video.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /galeri_video/1
  # DELETE /galeri_video/1.json
  def destroy
    @galeri_video.destroy
    respond_to do |format|
      format.html { redirect_to galeri_video_index_url, notice: 'Galeri video was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_galeri_video
      @galeri_video = GaleriVideo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def galeri_video_params
      params.require(:galeri_video).permit(:judul, :keterangan, :pengguna_id)
    end
end
