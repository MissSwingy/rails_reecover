class AddUsersToAttempts < ActiveRecord::Migration[5.2]
  def change
    add_reference :attempts, :user, foreign_key: true
  end
end
