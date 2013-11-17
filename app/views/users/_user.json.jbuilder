json.array!(@users) do |user|
  json.extract! user, :id, :first_name, :last_name, :is_admin, :full_name, :created_at, :updated_at
  json.created_at_formatted user.created_at.strftime("%m/%d/%Y")
  json.updated_at_formatted time_ago_in_words(user.updated_at)
end