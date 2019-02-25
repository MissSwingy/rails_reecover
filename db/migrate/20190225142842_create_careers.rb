class CreateCareers < ActiveRecord::Migration[5.2]
  def change
    create_table :careers do |t|
      t.string :title
      t.string :category
      t.references :personality_riasec, foreign_key: true

      t.timestamps
    end
  end
end
