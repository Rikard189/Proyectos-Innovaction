class CreateUsuarioProyectos < ActiveRecord::Migration[5.0]
  def change
    create_table :usuario_proyectos do |t|
      t.belongs_to :proyecto, index: true
      t.belongs_to :user, index:true

      t.timestamps
    end
  end
end
