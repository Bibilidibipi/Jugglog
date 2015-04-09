json.extract! @pattern, :id, :title, :body, :num_jugglers
json.parents @pattern.parents, :id, :title
json.children @pattern.children, :id, :title
