json.array! @users do |user|
  json.(@user, :id, :username, :wavatar_url)
end
