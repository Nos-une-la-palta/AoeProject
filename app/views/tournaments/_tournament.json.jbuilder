json.extract! tournament, :id, :title, :map, :modality, :content, :created_at, :updated_at
json.url tournament_url(tournament, format: :json)
