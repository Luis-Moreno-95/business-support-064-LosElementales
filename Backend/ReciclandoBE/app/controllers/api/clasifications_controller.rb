class Api::ClasificationsController < ApplicationController
    protect_from_forgery prepend: true
    before_action :set_clasification, only: [:show, :update, :destroy]
 
    def index
      @clasifications = Clasification.all
      render json: @clasifications
    end
   
    def show
    end
   
    def create
      @clasification = Clasification.new(clasification_params)
   
      if @clasification.save
        render json: @clasification, status: :created
      else
        render json: @clasification.errors, status: :unprocessable_entity
      end
    end
   
    def update
      if @clasification.update(clasification_params)
        render json: @clasification, status: :ok
      else
        render json: @clasification.errors, status: :unprocessable_entity
      end
    end
   
    def destroy
      @clasification.destroy
      head :no_content
    end
   
    private
      def set_clasification
        @clasification = Clasification.find(params[:id])
      end
   
      def clasification_params
        params.require(:clasification).permit(:descripcion_clasificacion)
      end

end
