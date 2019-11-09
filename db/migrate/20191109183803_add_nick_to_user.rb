class AddNickToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :nick, :string
  end
end
