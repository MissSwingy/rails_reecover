class UsersPersonality < ApplicationRecord
  belongs_to :user
  belongs_to :career
  belongs_to :personalityriasec
end
