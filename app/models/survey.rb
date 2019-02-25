class Survey < ApplicationRecord
  has_many :attempts
  has_many :questions
end
