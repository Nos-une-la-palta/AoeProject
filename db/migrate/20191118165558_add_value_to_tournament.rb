class AddValueToTournament < ActiveRecord::Migration[6.0]
  def change
    add_column :tournaments, :value, :integer
    add_column :tournaments, :price, :integer
  end
end
