class CreateUsuarioProyectos < ActiveRecord::Migration[5.0]
  def change
    create_table :usuario_proyectos do |t|

      t.timestamps
    end
  end
end
