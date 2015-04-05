# Schema Information

## comments
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
pattern_id  | integer   | not null, foreign key (references patterns)
body        | string    | not null

## followings
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
follower_id | integer   | not null, foreign key (references users)
followee_id | integer   | not null, foreign key (references users)

## learnings
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
user_id     | integer   | not null, foreign key (references users)
pattern_id  | integer   | not null, foreign key (references patterns)
status      | string    | not null

## patterns
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
title       | string    | not null
body        | string    | not null

## pre-req
colunm name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
parent_id   | integer   | not null, foreign key (references patterns)
child_id    | integer   | not null, foreign key (references patterns)


[//]: # (practices table stores dates of learnings, without having to create a new learning each time)

## practices
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
learning_id | integer   | not null, foreign key (references patterns)

## users
column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
name            | string    | not null, unique
email           | string    | not null, unique
password_digest | string    | not null
session_token   | string    | not null, unique

