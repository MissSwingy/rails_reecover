class TrainingCenter < ApplicationRecord
  belongs_to :career
  include PgSearch
  multisearchable against: [:name, :city, :category]
  scope :find_name, lambda { |search| where("name ILIKE :search", search: "%#{search}%") }
  geocoded_by :full_address
  after_validation :geocode, if: :will_save_change_to_full_address?

  def full_address
    [address, postal_code, city].compact.join(', ')
  end

  def will_save_change_to_full_address?
    will_save_change_to_address? || will_save_change_to_postal_code? || will_save_change_to_city?
  end
end
