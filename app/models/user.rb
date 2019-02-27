class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  mount_uploader :photo, PhotoUploader
  has_many :user_answers
  has_many :attempts
  has_many :users_personalities

  # after_create :send_welcome_email

    #private

    #def send_welcome_email
    # UserMailer.welcome(self).deliver_now
    #end
end
