class AddQuestionToQuestions < ActiveRecord::Migration[5.2]
  def change
    add_column :questions, :question, :string
  end
end
