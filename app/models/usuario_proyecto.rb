class UsuarioProyecto < ApplicationRecord
  belongs_to :user
  belongs_to :proyecto
end
