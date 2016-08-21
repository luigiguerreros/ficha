class CreatePaquetes < ActiveRecord::Migration[5.0]
  def change
    create_table :paquetes do |t|
      t.string :ps_paquete
      t.string :nombre_paquete
      t.string :tipo_paquete
      t.decimal :renta

      t.timestamps
    end
  end
end
