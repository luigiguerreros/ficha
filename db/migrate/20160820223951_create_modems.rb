class CreateModems < ActiveRecord::Migration[5.0]
  def change
    create_table :modems do |t|
      t.string :nombre_modem
      t.string :ps_modem
      t.string :oc_modem

      t.timestamps
    end
  end
end
