class AddProyectoIdToEstudiante < ActiveRecord::Migration[5.0]
  def change
    remove_column :estudiantes, :proyecto_id
    add_column :estudiantes, :proyecto_id, :integer
    add_index :estudiantes, :proyecto_id
  end
end
