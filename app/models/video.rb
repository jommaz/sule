class Video < ActiveRecord::Base
  belongs_to :capsule
  # mount_uploader :video, VideoUploader
end
