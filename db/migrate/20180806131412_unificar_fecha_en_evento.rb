class UnificarFechaEnEvento < ActiveRecord::Migration[5.1]
  def change
  	change_column :eventos, :fecha, :datetime
  	remove_column :eventos, :hora
  end
end
