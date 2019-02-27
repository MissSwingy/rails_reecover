class AddPhotoToAnswers < ActiveRecord::Migration[5.2]
  def change
    add_column :answers, :photo, :string
  end
end
