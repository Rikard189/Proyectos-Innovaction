class CreateUsuarioProyectos < ActiveRecord::Migration[5.0]
  def change
    create_table :usuario_proyectos, id: false do |t|
      t.belongs_to :proyecto, index: true
      t.belongs_to :user, index: true
    end
  end
end
