json.extract! user, :id, :name, :club_id, :created_at, :updated_at
json.url user_url(user, format: :json)