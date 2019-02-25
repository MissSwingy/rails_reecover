class CreateUsersPersonalities < ActiveRecord::Migration[5.2]
  def change
    create_table :users_personalities do |t|
      t.references :user, foreign_key: true
      t.references :career, foreign_key: true
      t.references :personality_riasec, foreign_key: true

      t.timestamps
    end
  end
end
