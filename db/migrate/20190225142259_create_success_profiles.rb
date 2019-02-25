class CreateSuccessProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :success_profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :sport
      t.string :bio
      t.string :photo
      t.string :website
      t.string :video
      t.references :personalityriasec, foreign_key: true

      t.timestamps
    end
  end
end
