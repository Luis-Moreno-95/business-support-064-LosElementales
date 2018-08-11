class Api::StatusesController < ApplicationController
  protect_from_forgery prepend:true
    before_action :set_status, only: [:show, :update, :destroy]
       
    def index
      @statuses = Status.all
      render json: @statuses
    end
   
    def show
      @status = Status.find(params[:id])
      render json: @status
    end

   
    def create
      puts "Test"
      @status = Status.new(status_params)      
      if @status.save
        render json: @status, status: :created
      else
        render json: @status.errors, status: :unprocessable_entity
      end
    end
   
    def update
      if @status.update(status_params)
        render json: @status, status: :ok
      else
        render json: @status.errors, status: :unprocessable_entity
      end
    end
   
    def destroy
      @status.destroy
      head :no_content
    end
   
    private
      def set_status
        @status = Status.find(params[:id])
      end
   
      def status_params
        params.require(:status).permit(:descripcion_estado)
      end
end
