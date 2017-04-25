class Proyecto < ApplicationRecord
  has_many :usuario_proyectos
  has_many :users, through: :usuario_proyectos

end
