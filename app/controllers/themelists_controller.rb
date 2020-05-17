class ThemelistsController < ApplicationController
  before_action :set_themelist, only: [:show, :edit, :update, :destroy]

  # GET /themelists
  # GET /themelists.json
  def index
    @themelists = Themelist.all
  end

  # GET /themelists/1
  # GET /themelists/1.json
  def show
  end

  # GET /themelists/new
  def new
    @themelist = Themelist.new
  end

  # GET /themelists/1/edit
  def edit
  end

  # POST /themelists
  # POST /themelists.json
  def create
    @themelist = Themelist.new(themelist_params)

    respond_to do |format|
      if @themelist.save
        format.html { redirect_to @themelist, notice: 'Themelist was successfully created.' }
        format.json { render :show, status: :created, location: @themelist }
      else
        format.html { render :new }
        format.json { render json: @themelist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /themelists/1
  # PATCH/PUT /themelists/1.json
  def update
    respond_to do |format|
      if @themelist.update(themelist_params)
        format.html { redirect_to @themelist, notice: 'Themelist was successfully updated.' }
        format.json { render :show, status: :ok, location: @themelist }
      else
        format.html { render :edit }
        format.json { render json: @themelist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /themelists/1
  # DELETE /themelists/1.json
  def destroy
    @themelist.destroy
    respond_to do |format|
      format.html { redirect_to themelists_url, notice: 'Themelist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_themelist
      @themelist = Themelist.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def themelist_params
      params.fetch(:themelist, {})
    end
end
