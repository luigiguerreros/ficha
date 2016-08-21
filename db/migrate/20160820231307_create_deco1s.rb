class CreateDeco1s < ActiveRecord::Migration[5.0]
  def change
    create_table :deco1s do |t|
      t.string :tipo
      t.string :ps
      t.string :oc

      t.timestamps
    end
  end
end
