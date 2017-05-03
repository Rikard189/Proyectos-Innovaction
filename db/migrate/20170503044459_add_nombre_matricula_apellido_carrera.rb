class AddNombreMatriculaApellidoCarrera < ActiveRecord::Migration[5.0]
  def change
    add_column :estudiantes, :matricula, :string
    add_column :estudiantes, :nombre, :string
    add_column :estudiantes, :apellido, :string
  end
end
