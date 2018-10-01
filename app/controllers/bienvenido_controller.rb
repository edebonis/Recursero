class BienvenidoController < ApplicationController
  def index
  	
  	# Obtener qué clasificaciones están marcadas
  	@clasificaciones = Lugar.new.clasificaciones
 	@clasificacionesFiltradas = []
  	@clasificaciones.each do |clasificacion|
  		if params[clasificacion] == 'si'
  			@clasificacionesFiltradas << clasificacion
  		end
  	end
  	#Filtrar solo los lugares de esas clasificaciones
  	@lugares = Lugar.where(clasificacion: @clasificacionesFiltradas)
  end
end
