# Bookmark_manager

## User stories

As a user,
So I can view my bookmarks,
I want to show a list of my bookmarked URLs.

As a user
So I can store bookmark data for later retrieval
I want to add a bookmark to Bookmark Manager

## MVC domain model

browser -> controller "GET request for homepage"  
controller -> model "give me all the bookmarks!! (bookmarks.all)"  
model -> controller "returns an array of bookmarked urls"  
controller -> view "passes on the array of bookmarked urls"  
view -> browser "html converting array to usable display (list)"  

browser -> controller "POST request"  
controller -> model "add and store this bookmark!!"  
model -> controller "returns an updated array of bookmarked urls"
controller -> view "passes the updated array to the view"  
view -> browser "html converting array to usable display (list)"  


## How to use
### To set up the project
Clone this repository and then run:
```
bundle
```

### To set up the database

Connect to `psql` and create the `bookmark_manager` database:

```
CREATE DATABASE bookmark_manager;
```

To set up the appropriate tables, connect to the database in `psql` and run the SQL scripts in the `db/migrations` folder in the given order.

### To run the Bookmark Manager app:

```
rackup -p 3000
```
To view bookmarks, navigate to `localhost:3000/bookmarks`.

### To run tests:

```
rspec
```
### To run linting:
```
rubocop
```


