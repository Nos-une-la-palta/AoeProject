# This migration comes from simple_discussion (originally 20170417012930)
class CreateForumCategories < ActiveRecord::Migration[4.2]
  def change
    create_table :forum_categories, force: :cascade do |t|
      t.string   :name, null: false
      t.string   :slug, null: false
      t.string   :color, default: "000000"

      t.timestamps
    end

    ForumCategory.reset_column_information

    ForumCategory.create(
      name: "General",
      color: "#FF4754",
    )

    ForumCategory.create(
      name: 'Estrategias',
      color: '#6041E8'
  )
  
  ForumCategory.create(
      name: 'Torneos',
      color: '#54FFEE'
  )
  
  ForumCategory.create(
      name: 'Downloads',
      color: '#A2E841'
  )
  
  ForumCategory.create(
      name: 'Torneos antiguos',
      color: 'FFB840'
  )
  
  ForumCategory.create(
      name: 'Vods',
      color: '#FF8D47'
  )
  ForumCategory.create(
      name: 'Partidas grabadas',
      color: '#c8ed32'
  )

  end
end
