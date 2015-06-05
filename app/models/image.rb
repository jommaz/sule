class Image < ActiveRecord::Base
  belongs_to :capsule
	mount_uploader :image, ImageUploader
end
