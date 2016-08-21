class CreateZonals < ActiveRecord::Migration[5.0]
  def change
    create_table :zonals do |t|
      t.string :nombre_zona
      t.string :descripcion

      t.timestamps
    end
  end
end
