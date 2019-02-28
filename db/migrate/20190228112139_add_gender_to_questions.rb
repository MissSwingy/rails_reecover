class AddGenderToQuestions < ActiveRecord::Migration[5.2]
  def change
    add_column :questions, :gender, :string
  end
end
