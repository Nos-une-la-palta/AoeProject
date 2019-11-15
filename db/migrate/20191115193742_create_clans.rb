class CreateClans < ActiveRecord::Migration[6.0]
  def change
    create_table :clans do |t|
      t.string :avatar
      t.string :name
      t.string :link

      t.timestamps
    end
  end
end
