class AddTipoToProyecto < ActiveRecord::Migration[5.0]
  def change
    add_column :proyectos, :tipo, :string 
  end
end
