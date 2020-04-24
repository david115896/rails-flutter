class TripactivitiesController < ApplicationController
  before_action :set_tripactivity, only: [:show, :edit, :update, :destroy]

  # GET /tripactivities
  # GET /tripactivities.json
  def index
    @tripactivities = Tripactivity.all
  end

  # GET /tripactivities/1
  # GET /tripactivities/1.json
  def show
  end

  # GET /tripactivities/new
  def new
    @tripactivity = Tripactivity.new
  end

  # GET /tripactivities/1/edit
  def edit
  end

  # POST /tripactivities
  # POST /tripactivities.json
  def create
    @tripactivity = Tripactivity.new(tripactivity_params)

    respond_to do |format|
      if @tripactivity.save
        format.html { redirect_to @tripactivity, notice: 'Tripactivity was successfully created.' }
        format.json { render :show, status: :created, location: @tripactivity }
      else
        format.html { render :new }
        format.json { render json: @tripactivity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tripactivities/1
  # PATCH/PUT /tripactivities/1.json
  def update
    respond_to do |format|
      if @tripactivity.update(tripactivity_params)
        format.html { redirect_to @tripactivity, notice: 'Tripactivity was successfully updated.' }
        format.json { render :show, status: :ok, location: @tripactivity }
      else
        format.html { render :edit }
        format.json { render json: @tripactivity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tripactivities/1
  # DELETE /tripactivities/1.json
  def destroy
    @tripactivity.destroy
    respond_to do |format|
      format.html { redirect_to tripactivities_url, notice: 'Tripactivity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tripactivity
      @tripactivity = Tripactivity.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tripactivity_params
      params.fetch(:tripactivity, {})
    end
end
