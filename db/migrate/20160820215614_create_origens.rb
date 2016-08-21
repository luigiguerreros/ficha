class CreateOrigens < ActiveRecord::Migration[5.0]
  def change
    create_table :origens do |t|
      t.string :nombre_origen
      t.string :descripcion

      t.timestamps
    end
  end
end
