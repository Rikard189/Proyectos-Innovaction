class AddProyectoIdToProfesor < ActiveRecord::Migration[5.0]
  def change
    add_column :profesors, :proyecto_id, :integer
    add_index :profesors, :proyecto_id
  end
end
