This application is a simple book review site, used as a way to get familiar with working on a Rails app. It probably won't be much more than a simple site to create, view, update, and delete books and reviews for them. I'm hoping to be able to add comments to book reviews as well

The usual `gem install rails` and then `bundle install` from inside the rubyreads folder should be sufficient to install the needed dependencies

Use `rails s` to run the app on the Puma server locally, and `rails console` to open a console that will let you interact with the app via Ruby commands


WIP features: 
* ~~Add validator for reviews: body must not be empty~~
* ~Add a navbar on every page so a user can easily return to the list of all available books~
* Ensure that certain fields like rating (out of five stars) is present when creating or editing a book
* Add busines logic to attempt to fetch a cover for our books automatically, or use a placeholder image
* Fix navbar not taking users to correct places
* Make it so that the "Back to reviews" link takes the reviews for that book
* Clean up view for show_review.html
* Add user authentication?
