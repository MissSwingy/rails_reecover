class Career < ApplicationRecord
  belongs_to :personality_riasec
  has_many :training_centers
  has_many :users_personalities
end
