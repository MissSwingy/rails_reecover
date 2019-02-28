class UsersPersonality < ApplicationRecord
  belongs_to :user
  belongs_to :career, optional: true
  belongs_to :personalityriasec, optional: true
end
