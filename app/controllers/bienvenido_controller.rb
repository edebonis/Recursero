class BienvenidoController < ApplicationController
  def index
  	@lugares= Lugar.all
  end
end
