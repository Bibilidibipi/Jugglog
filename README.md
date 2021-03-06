# Jugglog

[link][heroku]

[heroku]: http://jugglog.com

## Minimum Viable Product
Jugglog is a juggling pattern practice assistance app, built on Rails and
Backbone. Its design is inspired by Duolingo. Users can:

<!-- This is a Markdown checklist. Use it to keep track of your progress! -->

- [x] Create accounts
- [x] Create sessions (log in)
- [x] View index of other users
- [x] Follow other users
- [x] Search for other users by username
- [x] View prerequisite tree of juggling patterns
- [x] View individual juggling patterns and associated comments
- [x] Comment on juggling patterns
- [x] Log practice of juggling patterns
- [x] Log learning of juggling patterns
- [ ] View history of their logged practice

## Design Docs
* [View Wireframes][views]
* [DB schema][schema]

[views]: ./docs/views.md
[schema]: ./docs/schema.md

## Implementation Timeline

### Phase 1: User Authentication, Users index (~1 day)
I will implement user authentication in Rails based on the practices learned at
App Academy. I'll add a route to serve users data as JSON, then add a
Backbone model and collection to fetch data from that route. A composite view
will display the user index data, with subviews for individual users. By the end
of this phase, users will be able to view an index of other users. The most
important part of this phase will be pushing the app to Heroku and ensuring that
everything works before moving onto phase 2.

[Details][phase-one]

### Phase 2: Follow and search for other users (~2 days)
I'll add a view for a single user model. I'll add a search route to my users
controller that will alternatively populate the user index. The user show page
will include following information. By the end of this phase, users will be able
to search for other users by username, and follow them.

[Details][phase-two]

### Phase 3: Pattern tree (~1 day)
I'll add rails and Backbone models for patterns, as well as a Backbone pattern
index view and a show view. I'll also take some time to input patterns to the
tree. By the end of this phase, users will be able to view the pattern tree and
click on individual patterns to view their show page.

[Details][phase-three]

### Phase 4: Add Comments to Patterns (~2 days)
This will require a Backbone model and collection. I'll have a composite view of
comments as a subview of the pattern show page, and individual subviews of that
comments composite view for each comment. Comments will be ordered
chronologically. By the end of this phase, users will be able to view and add
comments from the pattern show page.

[Details][phase-four]

### Phase 5: Log Practice and Learning, View History (~3 days)
Practice and learning information will require a database migration and rails
associations. For history viewing, I'll add a Backbone view that's populated by
the last week of practice associations. By the end of this phase, users will be
able to log practice and learning of patterns from the pattern show page, and
view a history of the days they've practiced.

[Details][phase-five]

### Bonus Features (TBD)
- [x] Typeahead search bar
- [x] Submission of alternate names for patterns (No - pattern names should be common)
- [x] User avatars
- [x] Users can view the learned and practiced patterns of users they follow
- [ ] User bio
- [ ] 'Streak' indicator (consecutive days of logged practice)
- [ ] User rank based on logged practice among those they follow
- [ ] Infinite scroll for other users index
- [ ] Search for patterns by name
- [ ] Users can view patterns they're learning
- [ ] Users can view suggested patterns

[phase-one]: ./docs/phases/phase1.md
[phase-two]: ./docs/phases/phase2.md
[phase-three]: ./docs/phases/phase3.md
[phase-four]: ./docs/phases/phase4.md
[phase-five]: ./docs/phases/phase5.md
