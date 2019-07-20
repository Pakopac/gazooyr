class GazooiesController < ApplicationController
  before_action :set_gazooy, only: [:show, :edit, :update, :destroy]

  # GET /gazooies
  # GET /gazooies.json
  def index
    @gazooies = Gazooy.all
  end

  # GET /gazooies/1
  # GET /gazooies/1.json
  def show
  end

  # GET /gazooies/new
  def new
    @gazooy = Gazooy.new
  end

  # GET /gazooies/1/edit
  def edit
  end

  # POST /gazooies
  # POST /gazooies.json
  def create
    @gazooy = Gazooy.new(gazooy_params)

    respond_to do |format|
      if @gazooy.save
        format.html { redirect_to @gazooy, notice: 'Gazooy was successfully created.' }
        format.json { render :show, status: :created, location: @gazooy }
      else
        format.html { render :new }
        format.json { render json: @gazooy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gazooies/1
  # PATCH/PUT /gazooies/1.json
  def update
    respond_to do |format|
      if @gazooy.update(gazooy_params)
        format.html { redirect_to @gazooy, notice: 'Gazooy was successfully updated.' }
        format.json { render :show, status: :ok, location: @gazooy }
      else
        format.html { render :edit }
        format.json { render json: @gazooy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gazooies/1
  # DELETE /gazooies/1.json
  def destroy
    @gazooy.destroy
    respond_to do |format|
      format.html { redirect_to gazooies_url, notice: 'Gazooy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gazooy
      @gazooy = Gazooy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gazooy_params
      params.require(:gazooy).permit(:text)
    end
end
