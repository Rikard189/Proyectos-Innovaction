class AddUserIdToProyecto < ActiveRecord::Migration[5.0]
  def change
    add_column :proyectos, :user_id, :integer
    add_index :proyectos, :user_id
  end
end
