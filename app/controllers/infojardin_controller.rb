class InfojardinController < ApplicationController
	def index
    
  	end

	def show
    	@infojardin = InfoJardin.find(params[:id])
 	end

	def new
	end

	def create
  		@infojardin = InfoJardin.new(evento_params)
 
 	 	@infojardin.save
  		redirect_to @evento
	end

	def destroy
		@infojardin = InfoJardin.find(params[:id])
		@infojardin.destroy

		redirect_to infojardin_path
	end	

	private
 	
 	def infojardin_params
    	params.require(:infojardin).permit(:fecha, :titulo, :descripcion)
  	end
end
