class CreateCaracteristicatelefonos < ActiveRecord::Migration[5.0]
  def change
    create_table :caracteristicatelefonos do |t|
      t.string :pack
      t.string :tipo_pago
      t.decimal :costo

      t.timestamps
    end
  end
end
