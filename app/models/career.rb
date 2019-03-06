class Career < ApplicationRecord
  belongs_to :personality_riasec
  has_many :training_centers, dependent: :destroy
  has_many :users_personalities
  include PgSearch
  multisearchable against: [:title, :category]
  scope :find_title, lambda { |search| where("title ILIKE :search", search: "%#{search}%") }
end
