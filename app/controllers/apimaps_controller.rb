class ApimapsController < ApplicationController
  before_action :set_apimap, only: [:show, :edit, :update, :destroy]

  # GET /apimaps
  # GET /apimaps.json
  def index
    @apimaps = Apimap.all
    @hash = Gmaps4rails.build_markers(@apimaps) do |map, marker|
      marker.lat map.latitude
      marker.lng map.longitude
      marker.infowindow map.name
    end
  end

  # GET /apimaps/1
  # GET /apimaps/1.json
  def show
  end
  

  # GET /apimaps/new
  def new
    @apimap = Apimap.new
  end

  # GET /apimaps/1/edit
  def edit
  end

  # POST /apimaps
  # POST /apimaps.json
  def create
    @apimap = Apimap.new(apimap_params)

    respond_to do |format|
      if @apimap.save
        format.html { redirect_to '/apimaps', notice: 'Apimap was successfully created.' }
        format.json { render :show, status: :created, location: @apimap }
      else
        format.html { render :new }
        format.json { render json: @apimap.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /apimaps/1
  # PATCH/PUT /apimaps/1.json
  def update
    respond_to do |format|
      if @apimap.update(apimap_params)
        format.html { redirect_to @apimap, notice: 'Apimap was successfully updated.' }
        format.json { render :show, status: :ok, location: @apimap }
      else
        format.html { render :edit }
        format.json { render json: @apimap.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apimaps/1
  # DELETE /apimaps/1.json
  def destroy
    @apimap.destroy
    respond_to do |format|
      format.html { redirect_to apimaps_url, notice: 'Apimap was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apimap
      @apimap = Apimap.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def apimap_params
      params.require(:apimap).permit(:name, :latitude, :longitude)
    end
end
