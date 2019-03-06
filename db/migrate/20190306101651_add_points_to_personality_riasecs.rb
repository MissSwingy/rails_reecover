class AddPointsToPersonalityRiasecs < ActiveRecord::Migration[5.2]
  def change
    add_column :personality_riasecs, :points_forts, :text
    add_column :personality_riasecs, :points_faibles, :text
  end
end
