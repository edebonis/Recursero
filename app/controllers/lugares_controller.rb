class LugaresController < ApplicationController
	def new
	end

	def create
		render plain: params[:lugar].inspect

		@articulo = Articulo.new(params[:articulo])
 
  		@articulo.save
  		redirect_to @articulo
  	end
end
