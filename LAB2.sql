/*

Lab 1: Database Schema: Consider a simple database with one tables: BankAccount 

 Table: ● Columns: account_id (Primary Key), account_holder_name, account_balance

 Task 1: Insert Data Write an SQL INSERT statement to insert data into the BankAccount table

. Task 2: Retrieving Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance of all account holders from the BankAccount table. 

Task 3: Filtering Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance where the account_balance is more than 30,000.

 Task 4: Updating Data Write an SQL UPDATE statement to change the account_balance of the account holder whose ID is 101. 
/*
mysql> create database bank;
Query OK, 1 row affected (0.04 sec)

mysql> use bank
Database changed
mysql> use bank
Database changed
mysql> create table bank_account(account_id varchar(10)not null primarykey,accountholder_name varchar(50)not null,account_balance double not null );
mysql> create table bank_account(account_id varchar(10)not null primary key,accountholder_name varchar(50)not null,account_balance double not null );
Query OK, 0 rows affected (0.17 sec)

mysql> insert into bank_account values('101','ankesh rane',100000),('102','sayali mane',120000),('103','pranita sawant',130000),('104','roshni lahane',150000),'105','purva sagale',200000);

mysql> insert into bank_account values('101','ankesh rane',100000),('102','sayali mane',120000),('103','pranita sawant',130000),('104','roshni lahane',150000),('105','purva sagale',200000);
Query OK, 5 rows affected (0.02 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select accountholder_name,account_balance  from bank_account;
+--------------------+-----------------+
| accountholder_name | account_balance |
+--------------------+-----------------+
| ankesh rane        |          100000 |
| sayali mane        |          120000 |
| pranita sawant     |          130000 |
| roshni lahane      |          150000 |
| purva sagale       |          200000 |
+--------------------+-----------------+
5 rows in set (0.00 sec)

mysql> select accountholder_name,account_balance  from bank_account where account_balance='120000';
+--------------------+-----------------+
| accountholder_name | account_balance |
+--------------------+-----------------+
| sayali mane        |          120000 |
+--------------------+-----------------+
1 row in set (0.00 sec)

mysql> select accountholder_name,account_balance  from bank_account where account_balance > 120000';
  mysql> select accountholder_name,account_balance  from bank_account where account_balance > 120000;
+--------------------+-----------------+
| accountholder_name | account_balance |
+--------------------+-----------------+
| pranita sawant     |          130000 |
| roshni lahane      |          150000 |
| purva sagale       |          200000 |
+--------------------+-----------------+
3 rows in set (0.00 sec)

mysql> select * from bank_account;
+------------+--------------------+-----------------+
| account_id | accountholder_name | account_balance |
+------------+--------------------+-----------------+
| 101        | ankesh rane        |          100000 |
| 102        | sayali mane        |          120000 |
| 103        | pranita sawant     |          130000 |
| 104        | roshni lahane      |          150000 |
| 105        | purva sagale       |          200000 |
+------------+--------------------+-----------------+
5 rows in set (0.00 sec)

mysql> update bank_account set account_balance=300000 where account_id='105';
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from bank_account;
+------------+--------------------+-----------------+
| account_id | accountholder_name | account_balance |
+------------+--------------------+-----------------+
| 101        | ankesh rane        |          100000 |
| 102        | sayali mane        |          120000 |
| 103        | pranita sawant     |          130000 |
| 104        | roshni lahane      |          150000 |
| 105        | purva sagale       |          300000 |
+------------+--------------------+-----------------+
5 rows in set (0.00 sec)

