class Career < ApplicationRecord
  belongs_to :personalityriasec
  has_many :training_centers
end
