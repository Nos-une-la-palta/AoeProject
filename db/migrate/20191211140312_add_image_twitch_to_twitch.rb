class AddImageTwitchToTwitch < ActiveRecord::Migration[6.0]
  def change
    add_column :twitches, :image_twitch, :string
  end
end
