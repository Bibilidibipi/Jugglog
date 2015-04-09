json.array! @patterns do |pattern|
  json.id pattern.id
  json.title pattern.title
  json.children pattern.children, :id, :title
end
