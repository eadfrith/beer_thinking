class AddIndexToUsersEmailWilliamsWarnNumber < ActiveRecord::Migration
  def change
  	add_index :users, [:email, :williams_warn_number], unique: true
  end
end
