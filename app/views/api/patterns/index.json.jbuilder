json.array! @patterns do |pattern|
  json.id pattern.id
  json.title pattern.title
  json.num_jugglers pattern.num_jugglers
  json.parents pattern.parents, :id, :title
  json.children pattern.children, :id, :title
end
