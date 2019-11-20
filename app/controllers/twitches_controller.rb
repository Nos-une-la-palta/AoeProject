class TwitchesController < ApplicationController
  before_action :set_twitch, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource
  # GET /twitches
  # GET /twitches.json
  def index
    @twitches = Twitch.all
  end

  # GET /twitches/1
  # GET /twitches/1.json
  def show
  end

  # GET /twitches/new
  def new
    @twitch = Twitch.new
  end

  # GET /twitches/1/edit
  def edit
  end

  # POST /twitches
  # POST /twitches.json
  def create
    @twitch = Twitch.new(twitch_params)

    respond_to do |format|
      if @twitch.save
        format.html { redirect_to twitches_path, notice: 'Twitch was successfully created.' }
        format.json { render :show, status: :created, location: @twitch }
      else
        format.html { render :new }
        format.json { render json: @twitch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /twitches/1
  # PATCH/PUT /twitches/1.json
  def update
    respond_to do |format|
      if @twitch.update(twitch_params)
        format.html { redirect_to twitches_path, notice: 'Twitch was successfully updated.' }
        format.json { render :show, status: :ok, location: @twitch }
      else
        format.html { render :edit }
        format.json { render json: @twitch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /twitches/1
  # DELETE /twitches/1.json
  def destroy
    @twitch.destroy
    respond_to do |format|
      format.html { redirect_to twitches_url, notice: 'Twitch was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_twitch
      @twitch = Twitch.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def twitch_params
      params.require(:twitch).permit(:owner, :url)
    end
end
