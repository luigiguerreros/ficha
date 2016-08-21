class CreateAdministrativas < ActiveRecord::Migration[5.0]
  def change
    create_table :administrativas do |t|
      t.string :ps_administrativa
      t.string :velocidad

      t.timestamps
    end
  end
end
