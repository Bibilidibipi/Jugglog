json.(@user, :id, :created_at, :updated_at, :username, :gravatar_url)
json.followers @user.followers do |follower|
  json.(follower, :id, :created_at, :updated_at, :username)
end
json.followees @user.followees do |followee|
  json.(followee, :id, :created_at, :updated_at, :username)
end
json.isFollowerFollowings @user.is_follower_followings do |following|
  json.(following, :id, :follower_id, :followee_id)
end
