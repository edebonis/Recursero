class EventosController < ApplicationController
	def index
	    @eventos = Evento.order(:fecha).where("fecha >= '"+Time.now.strftime("%Y-%m-%d")+"'")
  	end

	def show
    	@evento = Evento.find(params[:id])
 	end

	def new
	end

	def create
  		@evento = Evento.new(evento_params)
 
 	 	@evento.save
  		redirect_to @evento
	end

	def destroy
		@evento = Evento.find(params[:id])
		@evento.destroy

		redirect_to eventos_path
	end	
 
	private
 	
 	def evento_params
    	params.require(:evento).permit(:fecha, :ubicacion, :hora, :nombre, :descripcion)
  	end

end