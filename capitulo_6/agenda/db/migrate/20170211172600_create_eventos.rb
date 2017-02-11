class CreateEventos < ActiveRecord::Migration[5.0]
  def change
    create_table :eventos do |t|
      t.string :nome
      t.string :local
      t.datetime :inicio
      t.datetime :termino

      t.timestamps
    end
  end
end
