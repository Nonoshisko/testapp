class MainroadsController < ApplicationController
  before_action :set_mainroad, only: [:show, :edit, :update, :destroy]

  # GET /mainroads
  # GET /mainroads.json
  def index
    @mainroads = Mainroad.all
  end

  # GET /mainroads/1
  # GET /mainroads/1.json
  def show
  end

  # GET /mainroads/new
  def new
    @mainroad = Mainroad.new
  end

  # GET /mainroads/1/edit
  def edit
  end

  # POST /mainroads
  # POST /mainroads.json
  def create
    @mainroad = Mainroad.new(mainroad_params)

    respond_to do |format|
      if @mainroad.save
        format.html { redirect_to @mainroad, notice: 'Mainroad was successfully created.' }
        format.json { render :show, status: :created, location: @mainroad }
      else
        format.html { render :new }
        format.json { render json: @mainroad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mainroads/1
  # PATCH/PUT /mainroads/1.json
  def update
    respond_to do |format|
      if @mainroad.update(mainroad_params)
        format.html { redirect_to @mainroad, notice: 'Mainroad was successfully updated.' }
        format.json { render :show, status: :ok, location: @mainroad }
      else
        format.html { render :edit }
        format.json { render json: @mainroad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mainroads/1
  # DELETE /mainroads/1.json
  def destroy
    @mainroad.destroy
    respond_to do |format|
      format.html { redirect_to mainroads_url, notice: 'Mainroad was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mainroad
      @mainroad = Mainroad.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mainroad_params
      params.require(:mainroad).permit(:Kdo, :Kam, :Co, :Cena)
    end
end
