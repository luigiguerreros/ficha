class CreateTelefonos < ActiveRecord::Migration[5.0]
  def change
    create_table :telefonos do |t|
      t.string :nombre_telefono
      t.string :ps_telefono
      t.string :oc_telefono

      t.timestamps
    end
  end
end
