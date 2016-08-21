class CreateAntenapuntos < ActiveRecord::Migration[5.0]
  def change
    create_table :antenapuntos do |t|
      t.string :tipo
      t.string :nombre
      t.string :ps
      t.string :oc

      t.timestamps
    end
  end
end
