class TrainingCenter < ApplicationRecord
  belongs_to :career
  include PgSearch
  multisearchable against: [:name, :city, :category]
  scope :find_name, lambda { |search| where("name ILIKE :search", search: "%#{search}%") }
end
