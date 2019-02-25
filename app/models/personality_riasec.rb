class PersonalityRiasec < ApplicationRecord
  has_many :success_profiles
  has_many :careers
  has_many :users_personalities
end
