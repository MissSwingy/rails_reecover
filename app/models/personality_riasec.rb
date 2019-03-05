class PersonalityRiasec < ApplicationRecord
  has_many :success_profiles
  has_many :careers, dependent: :destroy
  has_many :users_personalities
end
