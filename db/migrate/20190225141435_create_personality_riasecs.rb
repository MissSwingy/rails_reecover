class CreatePersonalityRiasecs < ActiveRecord::Migration[5.2]
  def change
    create_table :personality_riasecs do |t|
      t.string :name
      t.string :avatar_f
      t.string :avatar_m
      t.string :description

      t.timestamps
    end
  end
end
