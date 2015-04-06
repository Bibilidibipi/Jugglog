# Phase 1: User Authentication, Basic Blogs and Posts

## Rails
### Models
* Users
* Followings

### Controllers
* UsersController (create, new)
* SessionsController (create, new, destroy)
* API::UsersController (index)

### Views
* users/new.html.erb
* session/new.html.erb

## Backbone
### Models
* User

### Collections
* Users

### Views
* UsersIndex (composite view, contains UserSearch subview and UserIndexItem subviews)
* UserIndexItem

## Gems/Libraries
