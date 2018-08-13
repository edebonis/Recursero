class Lugar < ActiveRecord::Migration[5.1]
  def change
  	add_column :lugar, :longitude, :float
  	add_column :lugar, :latitude, :float
  end
end
