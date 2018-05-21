class CreateLugars < ActiveRecord::Migration[5.1]
  def change
    create_table :lugars do |t|
      t.string :nombre
      t.string :direccion
      t.string :clasificacion
      t.string :contacto
      t.text :descripcion

      t.timestamps
    end
  end
end
