class CreateAttempts < ActiveRecord::Migration[5.2]
  def change
    create_table :attempts do |t|
      t.string :result
      t.references :survey, foreign_key: true

      t.timestamps
    end
  end
end
