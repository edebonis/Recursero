class Lugar < ActiveRecord::Migration[5.1]
  def change
  	add_column :lugares, :longitude, :float
  	add_column :lugares, :latitude, :float
  end
end
