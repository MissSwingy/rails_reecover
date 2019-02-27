class UserAnswer < ApplicationRecord
  belongs_to :answer
  belongs_to :user
  belongs_to :attempt, optional: true
end
