class AddColumnPostalCodeToTrainingCenters < ActiveRecord::Migration[5.2]
  def change
        add_column :training_centers, :postal_code, :string
  end
end
