class TrainingCenter < ApplicationRecord
  belongs_to :career

  include PgSearch
  multisearchable against: [:name, :city]
end
