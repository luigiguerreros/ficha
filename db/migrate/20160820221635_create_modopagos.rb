class CreateModopagos < ActiveRecord::Migration[5.0]
  def change
    create_table :modopagos do |t|
      t.string :modo_pago
      t.string :descripcion

      t.timestamps
    end
  end
end
