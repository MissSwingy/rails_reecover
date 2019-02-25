class Career < ApplicationRecord
  belongs_to :personalityriasec
  has_many :training_centers
  has_many :users_personalities
end
