json.(@user, :id, :created_at, :updated_at, :username, :wavatar_url)

json.followers @user.followers do |follower|
  json.(follower, :id, :created_at, :updated_at, :username)
end
json.followees @user.followees do |followee|
  json.(followee, :id, :created_at, :updated_at, :username)
end
json.isFollowerFollowings @user.is_follower_followings do |following|
  json.(following, :id, :follower_id, :followee_id)
end

json.comments @user.comments, :id, :body, :author_id, :created_at
json.practices @user.practices, :id, :learning_id, :created_at
json.learnings @user.learnings, :id, :user_id, :pattern_id, :updated_at

if @user.learned_patterns.length > 0
  json.recentlyLearnedPatterns @user.learned_patterns.reorder('updated_at DESC').limit(6)
else
  json.recentlyLearnedPatterns []
end
if @user.practiced_patterns.length > 0
  json.recentlyPracticedPatterns @user.practiced_patterns.reorder('created_at DESC').limit(6)
else
  json.recentlyPracticedPatterns []
end
