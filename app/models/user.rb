class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  enum access_level: [:estudiante , :profesor, :admin]
  has_many :usuario_proyectos
  has_many :proyectos, through: :usuario_proyectos

end
