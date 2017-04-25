class RemoveAttributesFromProfesor < ActiveRecord::Migration[5.0]
  def change
    remove_column :profesores, :nombre, :nomina, :apellido
  end
end
