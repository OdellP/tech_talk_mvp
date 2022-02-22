json.extract! profile, :id, :developer_type, :preferred_languange, :points, :ranking, :user_id, :created_at, :updated_at
json.url profile_url(profile, format: :json)
