class LugaresController < ApplicationController
	def new
	end

	def create
		render plain: params[:lugar].inspect

		@lugar = Lugar.new(params[:lugar])
 
  		@lugar.save
  		redirect_to @lugar
  	end


end
