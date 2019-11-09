class AddModeratorToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :moderator, :boolean, deafaul: false
  end
end
