# Advanced MYSQL



## General
1. How to create tables with constraints
2. How to optimize queries by adding indexes
3. What is and how to implement stored procedures and functions in MySQL
4. What is and how to implement views in MySQL
5. What is and how to implement triggers in MySQL



## Commenting on SQL scripts
```
$ cat my_script.sql
-- 3 first students in the Batch ID=3
-- because Batch 3 is the best!
SELECT id, name FROM students WHERE batch_id = 3 ORDER BY created_at DESC LIMIT 3;

```

## Usage 
Use “container-on-demand” to run MySQL

1. Ask for container Ubuntu 18.04 - Python 3.7
2. Connect via SSH
3. Or via the WebTerminal
4. In the container, you should start MySQL before playing with it:


```
$ service mysql start
 * MySQL Community Server 5.7.30 is started
$
$ cat 0-list_databases.sql | mysql -uroot -p my_database
Enter password: 
Database
information_schema
mysql
performance_schema
sys
$
```
