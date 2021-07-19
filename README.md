### User Stories
```
As a user 
So I can see what bookmarks I have
I would like to be able to see a list of my bookmarks
```
![alt text](public/domain_model.png 'User story domain model')

### Setting up the database

1. Connect to 'psql' and create the 'bookmark_manager' database:
2. Create the databade using psql command:
```
CREATE DATABASE bookmark_manager;
```
3. Connect to database in 'psql':
```
\c bookmark_manager;
```
4. Run the SQL scripts in the 'db/migrations' folder in given order.