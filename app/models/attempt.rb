class Attempt < ApplicationRecord
  belongs_to :survey
  belongs_to :user
  has_many :users_answers
end
