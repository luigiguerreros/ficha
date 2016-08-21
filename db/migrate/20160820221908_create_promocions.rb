class CreatePromocions < ActiveRecord::Migration[5.0]
  def change
    create_table :promocions do |t|
      t.decimal :costo
      t.string :tiempo

      t.timestamps
    end
  end
end
