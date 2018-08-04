class ClasificationsController < ApplicationController
  before_action :set_clasification, only: [:show, :edit, :update, :destroy]

  # GET /clasifications
  # GET /clasifications.json
  def index
    @clasifications = Clasification.all
  end

  # GET /clasifications/1
  # GET /clasifications/1.json
  def show
  end

  # GET /clasifications/new
  def new
    @clasification = Clasification.new
  end

  # GET /clasifications/1/edit
  def edit
  end

  # POST /clasifications
  # POST /clasifications.json
  def create
    @clasification = Clasification.new(clasification_params)

    respond_to do |format|
      if @clasification.save
        format.html { redirect_to @clasification, notice: 'Clasification was successfully created.' }
        format.json { render :show, status: :created, location: @clasification }
      else
        format.html { render :new }
        format.json { render json: @clasification.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clasifications/1
  # PATCH/PUT /clasifications/1.json
  def update
    respond_to do |format|
      if @clasification.update(clasification_params)
        format.html { redirect_to @clasification, notice: 'Clasification was successfully updated.' }
        format.json { render :show, status: :ok, location: @clasification }
      else
        format.html { render :edit }
        format.json { render json: @clasification.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clasifications/1
  # DELETE /clasifications/1.json
  def destroy
    @clasification.destroy
    respond_to do |format|
      format.html { redirect_to clasifications_url, notice: 'Clasification was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clasification
      @clasification = Clasification.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def clasification_params
      params.require(:clasification).permit(:descripcion_clasificacion)
    end
end
