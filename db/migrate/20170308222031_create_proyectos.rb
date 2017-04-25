class CreateProyectos < ActiveRecord::Migration[5.0]
  def change
    create_table :proyectos do |t|
      t.belongs_to :user, index: true
      t.string :nombre
      t.text :descripcion
      t.string :alcance
      t.integer :unidades
      t.binary :imagen_promocional

      t.timestamps
    end
  end
end
