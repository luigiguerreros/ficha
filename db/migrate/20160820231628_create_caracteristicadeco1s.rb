class CreateCaracteristicadeco1s < ActiveRecord::Migration[5.0]
  def change
    create_table :caracteristicadeco1s do |t|
      t.string :pack
      t.string :tipo_pago
      t.decimal :costo

      t.timestamps
    end
  end
end
