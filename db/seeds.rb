100.times do
  begin
    User.create(username: Faker::Internet.user_name, password: 'password')
  rescue
    retry
  end
end

numUsers = User.all.length
50.times do
  begin
    Following.create(follower_id: rand(numUsers) + 1, followee_id: rand(numUsers) + 1)
  rescue
    retry
  end
end

Pattern.create(title: 'cascade', body: 'juggling!')
Pattern.create(title: 'shower', body: 'more juggling')
PreReq.create(parent_id: 1, child_id: 2)
