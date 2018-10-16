# Database used
Chinook database - https://stackoverflow.com/a/48194595

# Run sql queries from file

```
psql-# \i path/to/file/sql
```

Example
```
➜  postgres git:(master) ✗ dbconsole
Password for user postgres:
psql (9.6.5, server 9.5.14)
Type "help" for help.

postgres=# \c chinook
Password for user postgres:
psql (9.6.5, server 9.5.14)
You are now connected to database "chinook" as user "postgres".
chinook=# \i album.sql
```
