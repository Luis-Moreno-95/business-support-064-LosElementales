class Api::ContentsController < ApplicationController
    protect_from_forgery prepend: true
    before_action :set_Content, only: [:show, :update, :destroy]
       
        def index
          @contents = Content.all
          render json: @contents
        end
       
        def show
          @content = Content.find(params[:id])
          render json: @content
        end
       
        def create
          @content = Content.new(content_params)
       
          if @content.save
            render json: @content, status: :created
          else
            render json: @content.errors, status: :unprocessable_entity
          end
        end
       
        def update
          if @content.update(content_params)
            render json: @content, status: :ok
          else
            render json: @content.errors, status: :unprocessable_entity
          end
        end
       
        def destroy
          @content.destroy
          head :no_content
        end
       
        private
          def set_Content
            @content = Content.find(params[:id])
          end
       
          def content_params
            params.require(:content).permit(:nombre_contenido, :descripcion_contenido, :ruta_multimedia_contenido)
          end
end
