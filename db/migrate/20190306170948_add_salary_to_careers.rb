class AddSalaryToCareers < ActiveRecord::Migration[5.2]
  def change
    add_column :careers, :salary, :integer
  end
end
