class Proyecto < ApplicationRecord
  belongs_to :user
  has_many :estudiantes
  validates :user_id , presence: true
  validates_presence_of :image
  mount_uploader :image, ImageUploader
  has_and_belongs_to_many :atributos
  has_many :profesors

end
