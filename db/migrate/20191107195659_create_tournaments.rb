class CreateTournaments < ActiveRecord::Migration[6.0]
  def change
    create_table :tournaments do |t|
      t.string :title
      t.string :map
      t.string :modality
      t.string :content

      t.timestamps
    end
  end
end
