class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  mount_uploader :photo, PhotoUploader
  has_many :user_answers, dependent: :destroy
  has_many :attempts, dependent: :destroy
  has_many :users_personalities, dependent: :destroy
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  # after_create :send_welcome_email

    #private

    #def send_welcome_email
    # UserMailer.welcome(self).deliver_now
    #end
end
