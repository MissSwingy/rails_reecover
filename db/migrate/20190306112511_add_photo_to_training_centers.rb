class AddPhotoToTrainingCenters < ActiveRecord::Migration[5.2]
  def change
    add_column :training_centers, :photo, :string
  end
end
