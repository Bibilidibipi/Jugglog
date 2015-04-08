json.(@user, :id, :created_at, :updated_at, :username)
json.followers @user.followers do |follower|
  json.(follower, :id, :created_at, :updated_at, :username)
end
json.followees @user.followees do |followee|
  json.(followee, :id, :created_at, :updated_at, :username)
end
