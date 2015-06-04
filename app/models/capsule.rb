class Capsule < ActiveRecord::Base
  belongs_to :user

  has_many :posts, dependent: :destroy
  has_many :images, dependent: :destroy
  has_many :videos, dependent: :destroy
  mount_uploader :image, ImageUploader
  mount_uploader :video, VideoUploader
end
