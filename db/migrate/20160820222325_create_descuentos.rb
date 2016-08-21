class CreateDescuentos < ActiveRecord::Migration[5.0]
  def change
    create_table :descuentos do |t|
      t.string :ps_descuento
      t.string :descripcion

      t.timestamps
    end
  end
end
