class AddPriceToTrainingCenters < ActiveRecord::Migration[5.2]
  def change
    add_column :training_centers, :price, :integer
  end
end
