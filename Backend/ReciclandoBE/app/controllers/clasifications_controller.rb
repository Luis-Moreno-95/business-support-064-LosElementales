class ClasificationsController < ApplicationController
  before_action :set_clasification, only: [:show, :update, :destroy]

  # GET /clasifications
  def index
    @clasifications = Clasification.all

    render json: @clasifications
  end

  # GET /clasifications/1
  def show
    render json: @clasification
  end

  # POST /clasifications
  def create
    @clasification = Clasification.new(clasification_params)

    if @clasification.save
      render json: @clasification, status: :created, location: @clasification
    else
      render json: @clasification.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /clasifications/1
  def update
    if @clasification.update(clasification_params)
      render json: @clasification
    else
      render json: @clasification.errors, status: :unprocessable_entity
    end
  end

  # DELETE /clasifications/1
  def destroy
    @clasification.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clasification
      @clasification = Clasification.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def clasification_params
      params.require(:clasification).permit(:descripcion_clasificacion)
    end
end
