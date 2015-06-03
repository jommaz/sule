class Image < ActiveRecord::Base
  belongs_to :capsule
  mount_uploader :images, ImagesUploader
end
