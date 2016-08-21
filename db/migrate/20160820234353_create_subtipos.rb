class CreateSubtipos < ActiveRecord::Migration[5.0]
  def change
    create_table :subtipos do |t|
      t.string :nombre_subtipo
      t.string :descripcion

      t.timestamps
    end
  end
end
