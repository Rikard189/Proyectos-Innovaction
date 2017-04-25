class CreateEstudiantes < ActiveRecord::Migration[5.0]
  def change
    create_table :estudiantes do |t|
      t.string :matricula
      t.string :nombre
      t.string :apellido
      t.string :email

      t.timestamps
    end
  end
end
