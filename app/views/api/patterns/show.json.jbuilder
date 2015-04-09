json.extract! @pattern, :id, :title, :body
json.parents @pattern.parents, :id, :title
json.children @pattern.children, :id, :title
