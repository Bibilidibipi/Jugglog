json.array! @patterns do |pattern|
  json.id pattern.id
  json.title pattern.title
  json.num_jugglers pattern.num_jugglers
  json.num_clubs pattern.num_clubs
  json.parents pattern.parents, :id, :title, :num_clubs
  json.children pattern.children, :id, :title, :num_clubs
end
