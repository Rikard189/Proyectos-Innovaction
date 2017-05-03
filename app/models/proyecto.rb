class Proyecto < ApplicationRecord
  belongs_to :user
  validates :user_id , presence: true
  validates_presence_of :image
  mount_uploader :image, ImageUploader
  has_and_belongs_to_many :atributos

end
