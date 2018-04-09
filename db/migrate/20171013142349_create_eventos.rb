class CreateEventos < ActiveRecord::Migration[5.1]
  def change
    create_table :eventos do |t|
      t.string :nombre
      t.date :fecha
      t.text :ubicacion
      t.text :descripcion
      t.timestamps null: false
    end
  end
end
