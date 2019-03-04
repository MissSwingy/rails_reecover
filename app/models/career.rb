class Career < ApplicationRecord
  belongs_to :personality_riasec
  has_many :training_centers
  has_many :users_personalities

  include PgSearch
  multisearchable against: [:title, :category]

  def intiialize
    PgSearch.multisearch_options = {
      using: :tsearch {prefix: true },
      using: :trigram],
      ignoring: :accents
    }
  end
  #   ignoring: :accents,
  #   using: {
  #     tsearch: { prefix: true }
  #   }
end
