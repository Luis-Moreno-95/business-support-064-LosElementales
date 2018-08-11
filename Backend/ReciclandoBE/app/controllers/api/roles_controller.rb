class Api::RolesController < ApplicationController
    protect_from_forgery prepend: true
    before_action :set_role, only: [:show, :update, :destroy]
       
        def index
          @roles = Role.all
          render json: @roles
        end
       
        def show
          @role = Role.find(params[:id])
          render json: @role
        end
       
        def create
          @role = Role.new(role_params)
       
          if @role.save
            render json: @role, status: :created
          else
            render json: @role.errors, status: :unprocessable_entity
          end
        end
       
        def update
          if @role.update(role_params)
            render json: @role, status: :ok
          else
            render json: @role.errors, status: :unprocessable_entity
          end
        end
       
        def destroy
          @role.destroy
          head :no_content
        end
       
        private
          def set_role
            @role = Role.find(params[:id])
          end
       
          def role_params
            params.require(:role).permit(:nombre_rol, :descripcion_rol)
          end
end
