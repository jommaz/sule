class Capsule < ActiveRecord::Base
  belongs_to :user

  has_many :posts, dependent: :destroy
  has_many :images, dependent: :destroy
  has_many :videos, dependent: :destroy
  mount_uploader :image, ImageUploader
  mount_uploader :video, VideoUploader

	accepts_nested_attributes_for :posts, :reject_if => lambda { |b| b[:body].blank? }
end
