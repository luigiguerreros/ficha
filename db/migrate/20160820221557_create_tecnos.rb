class CreateTecnos < ActiveRecord::Migration[5.0]
  def change
    create_table :tecnos do |t|
      t.string :tipo_tecnologia
      t.string :descripcion

      t.timestamps
    end
  end
end
