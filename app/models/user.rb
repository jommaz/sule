class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :capsules, dependent: :destroy

  

  def send_notification
  	AdminMailer.new_user(self).deliver
  end
  
end
