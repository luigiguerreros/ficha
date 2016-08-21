class CreateCampanas < ActiveRecord::Migration[5.0]
  def change
    create_table :campanas do |t|
      t.string :nombre_camapana
      t.string :descripcion

      t.timestamps
    end
  end
end
