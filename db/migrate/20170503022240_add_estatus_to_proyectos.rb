class AddEstatusToProyectos < ActiveRecord::Migration[5.0]
  def change
    add_column :proyectos, :estatus, :string 
  end
end
