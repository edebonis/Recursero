class LugaresController < ApplicationController
	def new
    @lugar = Lugar.new
	end

	def create
		@lugar = Lugar.new(lugar_params)
		@lugar.save
		redirect_to @lugar
	end

 	def index
   	@lugares = Lugar.all
 	end
 
 	def show
    @lugar = Lugar.find(params[:id])
 	end

  private
    def lugar_params
      params.require(:lugar).permit(:nombre, :direccion, :clasificacion, :contacto)
    end
end
