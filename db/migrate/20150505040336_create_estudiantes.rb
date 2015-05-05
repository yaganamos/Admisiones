class CreateEstudiantes < ActiveRecord::Migration
  def change
    create_table :estudiantes do |t|
      t.string :nombre
      t.string :apellido
      t.integer :documento
      t.string :grado
      t.string :sexo
      t.string :division
      t.string :estado
      t.integer :rep_id
      t.integer :mat_id

      t.timestamps null: false
    end
  end
end
