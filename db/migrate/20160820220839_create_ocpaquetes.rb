class CreateOcpaquetes < ActiveRecord::Migration[5.0]
  def change
    create_table :ocpaquetes do |t|
      t.string :tipo_ocpaquete
      t.string :descripcion

      t.timestamps
    end
  end
end
