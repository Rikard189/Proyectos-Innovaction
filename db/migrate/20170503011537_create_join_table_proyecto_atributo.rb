class CreateJoinTableProyectoAtributo < ActiveRecord::Migration[5.0]
  def change
    create_join_table :proyectos, :atributos do |t|
      # t.index [:proyecto_id, :atributo_id]
      # t.index [:atributo_id, :proyecto_id]
    end
  end
end
