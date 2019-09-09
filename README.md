# RPS Challenge

Task
----

Provide a Bookmark application on the web with the following user stories:

```sh
As an internet user
So that I can access my favourite websites easily
I would like to see a list of my favorite bookmarks

```
## Domain model


```sequence {theme="hand"}
user->app.rb: Type url to send http Get '/' route
app.rb->bookmark.rb: bookmark.list
bookmark.rb->app.rb: bookmarks
app.rb->bookmark.erb: bookmarks
bookmark.erb->app.rb: page html
app.rb->user: http response displaying bookmark list
```

## Terminal instructions for downloading and running app

git clone git@github.com:mariacuffaro/bookmark_manager.git
cd rps-challenge
bundle install
rackup

## Setting up the database

####Enter postgresql and create the database
$>psql
=# CREATE DATABASE "bookmark_manager";

####Connect to the database and create the tables
=# \c bookmark_manager;

Then run the query in the file 01_create_bookmarks_table.sql

type \q to exit postgresql
