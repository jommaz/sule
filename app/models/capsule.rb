class Capsule < ActiveRecord::Base
  belongs_to :user
  has_many :posts
  has_many :images
  has_many :videos
end
