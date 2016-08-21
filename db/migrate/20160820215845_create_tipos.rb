class CreateTipos < ActiveRecord::Migration[5.0]
  def change
    create_table :tipos do |t|
      t.string :nombre_tipo
      t.string :descripcion

      t.timestamps
    end
  end
end
