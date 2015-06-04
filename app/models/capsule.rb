class Capsule < ActiveRecord::Base
  belongs_to :user
  has_many :posts
  has_many :images
  has_many :videos
  mount_uploader :image, ImageUploader
  mount_uploader :video, VideoUploader
end
