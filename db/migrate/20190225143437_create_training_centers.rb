class CreateTrainingCenters < ActiveRecord::Migration[5.2]
  def change
    create_table :training_centers do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :category
      t.string :email
      t.string :telephone
      t.string :website
      t.float :latitude
      t.float :longitude
      t.references :career, foreign_key: true

      t.timestamps
    end
  end
end
