class Attempt < ApplicationRecord
  belongs_to :survey
  belongs_to :user
  has_many :user_answers, dependent: :destroy
end
