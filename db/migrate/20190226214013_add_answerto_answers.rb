class AddAnswertoAnswers < ActiveRecord::Migration[5.2]
  def change
    add_column :answers, :answer, :string
  end
end
