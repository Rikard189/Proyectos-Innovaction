class AddColumnToUsuarioProyecto < ActiveRecord::Migration[5.0]
  def change
    add_column :usuario_proyectos, :user_id, :integer
    add_column :usuario_proyectos, :proyecto_id, :integer
  end
end
