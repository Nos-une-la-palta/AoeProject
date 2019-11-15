class CreateTwitches < ActiveRecord::Migration[6.0]
  def change
    create_table :twitches do |t|
      t.string :owner
      t.string :url

      t.timestamps
    end
  end
end
