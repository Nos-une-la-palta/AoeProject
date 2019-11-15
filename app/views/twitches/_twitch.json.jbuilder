json.extract! twitch, :id, :owner, :url, :created_at, :updated_at
json.url twitch_url(twitch, format: :json)
