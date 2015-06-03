class Video < ActiveRecord::Base
	attr_accessible :capsule_id, :videos
  belongs_to :capsule
  mount_uploader :videos, VideosUploader
end
