class ChangeDataTypeInProyecto < ActiveRecord::Migration[5.0]
  def change
      change_column :proyectos , :imagen_promocional, :string
  end
end
