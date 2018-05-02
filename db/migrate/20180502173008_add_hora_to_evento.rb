class AddHoraToEvento < ActiveRecord::Migration[5.1]
  def change
    add_column :eventos, :hora, :time
  end
end
