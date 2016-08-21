class CreateGestions < ActiveRecord::Migration[5.0]
  def change
    create_table :gestions do |t|
      t.string :codigo
      t.references :origen, foreign_key: true
      t.references :campana, foreign_key: true
      t.references :zonal, foreign_key: true
      t.references :tipo, foreign_key: true
      t.references :subtipo, foreign_key: true
      t.references :paquete, foreign_key: true
      t.references :linea, foreign_key: true
      t.references :internet, foreign_key: true
      t.references :administrativa, foreign_key: true
      t.references :tecno, foreign_key: true
      t.references :modopago, foreign_key: true
      t.decimal :monto_instalacion
      t.references :promocion, foreign_key: true
      t.references :descuento, foreign_key: true
      t.string :equipamiento
      t.references :telefono, foreign_key: true
      t.references :caracteristicatelefono, foreign_key: true
      t.references :modem, foreign_key: true
      t.references :caracteristicamodem, foreign_key: true
      t.references :antenapunto, foreign_key: true
      t.references :deco1, foreign_key: true
      t.references :caracteristicadeco1, foreign_key: true
      t.references :deco2, foreign_key: true
      t.references :caracteristicadeco2, foreign_key: true

      t.timestamps
    end
  end
end
