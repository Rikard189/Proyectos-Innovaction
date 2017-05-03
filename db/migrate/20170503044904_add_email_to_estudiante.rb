class AddEmailToEstudiante < ActiveRecord::Migration[5.0]
  def change
    add_column :estudiantes, :email, :string
  end
end
