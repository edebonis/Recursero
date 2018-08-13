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
  		redirect_to eventos_path
	end

	def destroy
		@evento = Evento.find(params[:id])
		@evento.destroy

		redirect_to eventos_path
	end	

	def mensaje_de_whatsapp
		URI.encode "whatsapp://send?text=Te invito al evento #{@evento.nombre}!\r\nEl día #{ I18n.localize(@evento.fecha, format: "%A %d de %B, %Y a las %H:%Mhs") }. \r\nEn #{@evento.ubicacion }. \r\n\r\nMás info en #{ request.original_url }"
	end
 
	private
 	
 	def evento_params
    	params.require(:evento).permit(:fecha, :ubicacion, :hora, :nombre, :descripcion)
  	end

end