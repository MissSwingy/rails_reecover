class Career < ApplicationRecord
  belongs_to :personality_riasec
  has_many :training_centers, dependent: :delete_all
  has_many :users_personalities
end
