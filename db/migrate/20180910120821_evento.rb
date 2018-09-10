class Evento < ActiveRecord::Migration[5.1]
  def change
  	add_column :eventos, :longitude, :float
  	add_column :eventos, :latitude, :float
  end
end
