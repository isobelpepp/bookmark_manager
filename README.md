### User Stories
```
As a user 
So I can see what bookmarks I have
I would like to be able to see a list of my bookmarks
```
![alt text](public/domain_model.png 'User story domain model')

``` 
As a user
So that I can store websites I like
I would like to add a bookmark to the Bookmark Manager
```

``` 
As a user
In case I add a bookmark by mistake or don't need it anymore
I would like to be able to delete bookmarks
```

### Setting up the database

1. Connect to 'psql' and create the 'bookmark_manager' database:
2. Create the database using psql command:
```
CREATE DATABASE bookmark_manager;
```
3. Connect to database in 'psql':
```
\c bookmark_manager;
```
4. Run the SQL scripts in the 'db/migrations' folder in given order.

5. Use SQL query saved in db/migrations 01_create_bookmark_manager to create test environment
```
CREATE DATABASE "bookmark_manager_test";
CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));
```

6. Use SQL query saved in db/migrations 02_add_title_column to create new column in both bookmark_manager and bookmark_manager_test

```
ALTER TABLE bookmarks ADD COLUMN title VARCHAR(60);
```