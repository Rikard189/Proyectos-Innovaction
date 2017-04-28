class ChangeImagenPromocionalFromProyectos < ActiveRecord::Migration[5.0]
  def change
    rename_column :proyectos, :imagen_promocional, :image
  end
end
