json.extract! @pattern, :id, :title, :body, :num_jugglers, :diagram_url
json.parents @pattern.parents, :id, :title, :num_clubs
json.children @pattern.children, :id, :title, :num_clubs
json.comments @pattern.comments, :id, :body, :author_id, :created_at
json.practiced @pattern.practiced(current_user.id)
json.learned @pattern.learned(current_user.id)
