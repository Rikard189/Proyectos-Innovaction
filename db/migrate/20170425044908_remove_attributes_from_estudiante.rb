class RemoveAttributesFromEstudiante < ActiveRecord::Migration[5.0]
  def change
    remove_column :estudiantes, :nombre, :matricula, :apellido, :email

  end
end
