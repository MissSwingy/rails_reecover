class Survey < ApplicationRecord
  has_many :attempts, dependent: :destroy
  has_many :questions, dependent: :destroy
end
