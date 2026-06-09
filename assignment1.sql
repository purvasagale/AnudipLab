mysql> show databases;
+--------------------------+
| Database                 |
+--------------------------+
| aggregation              |
| e_commerce               |
| ecommerce                |
| information_schema       |
| joint                    |
| mysql                    |
| performance_schema       |
| sakila                   |
| sakshi                   |
| store_procedure_example  |
| student                  |
| studentmanagementsystem1 |
| sys                      |
| world                    |
+--------------------------+
14 rows in set (0.04 sec)
mysql> insert into employee values(01,'purva sagale',20000),(02,'jeet sagale',70000),(03,'priya desai',60000),(04,'riya more',50000),(05,'jiva sagale',90000);
Query OK, 5 rows affected (0.02 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from employee;
+------------+--------------+--------+
| emplyee_id | emplyee_name | salary |
+------------+--------------+--------+
|          1 | purva sagale |  20000 |
|          2 | jeet sagale  |  70000 |
|          3 | priya desai  |  60000 |
|          4 | riya more    |  50000 |
|          5 | jiva sagale  |  90000 |
+------------+--------------+--------+
5 rows in set (0.00 sec)

mysql> update emplyee set salary=40000 where emplyee_id=05;
ERROR 1146 (42S02): Table 'e_commerce.emplyee' doesn't exist
mysql> update employee set salary=40000 where emplyee_id=05;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from emplyee;
ERROR 1146 (42S02): Table 'e_commerce.emplyee' doesn't exist
mysql> select * from employee;
+------------+--------------+--------+
| emplyee_id | emplyee_name | salary |
+------------+--------------+--------+
|          1 | purva sagale |  20000 |
|          2 | jeet sagale  |  70000 |
|          3 | priya desai  |  60000 |
|          4 | riya more    |  50000 |
|          5 | jiva sagale  |  40000 |
+------------+--------------+--------+
mysql> delete from employee where emplyee_id=05;
Query OK, 1 row affected (0.01 sec)

mysql> select * from emplyee;
create table employee(employee_id int(10) not null primary key,employee_name varchar(50) not null,salary double not null);
Query OK, 0 rows affected, 1 warning (0.04 sec)

mysql> insert into employee values(01,'purva sagale',20000),(02,'jeet sagale',70000),(03,'priya desai',60000),(04,'riya more',50000),(05,'jiva sagale',90000);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from employee;
+-------------+---------------+--------+
| employee_id | employee_name | salary |
+-------------+---------------+--------+
|           1 | purva sagale  |  20000 |
|           2 | jeet sagale   |  70000 |
|           3 | priya desai   |  60000 |
|           4 | riya more     |  50000 |
|           5 | jiva sagale   |  90000 |
+-------------+---------------+--------+
5 rows in set (0.00 sec)

mysql> alter table employee add email varchar(100) not null;
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc employee;
+---------------+--------------+------+-----+---------+-------+
| Field         | Type         | Null | Key | Default | Extra |
+---------------+--------------+------+-----+---------+-------+
| employee_id   | int          | NO   | PRI | NULL    |       |
| employee_name | varchar(50)  | NO   |     | NULL    |       |
| salary        | double       | NO   |     | NULL    |       |
| email         | varchar(100) | NO   |     | NULL    |       |
+---------------+--------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

mysql> alter table employee modify employee_name varchar(100) not null ;
Query OK, 5 rows affected (0.15 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> desc employee;
+---------------+--------------+------+-----+---------+-------+
| Field         | Type         | Null | Key | Default | Extra |
+---------------+--------------+------+-----+---------+-------+
| employee_id   | int          | NO   | PRI | NULL    |       |
| employee_name | varchar(100) | NO   |     | NULL    |       |
| salary        | double       | NO   |     | NULL    |       |
| email         | varchar(100) | NO   |     | NULL    |       |
+---------------+--------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> alter table employee drop column email;
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc employee;
+---------------+--------------+------+-----+---------+-------+
| Field         | Type         | Null | Key | Default | Extra |
+---------------+--------------+------+-----+---------+-------+
| employee_id   | int          | NO   | PRI | NULL    |       |
| employee_name | varchar(100) | NO   |     | NULL    |       |
| salary        | double       | NO   |     | NULL    |       |
+---------------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> alter table employee rename column salary to employee_salary;
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc employee;
+-----------------+--------------+------+-----+---------+-------+
| Field           | Type         | Null | Key | Default | Extra |
+-----------------+--------------+------+-----+---------+-------+
| employee_id     | int          | NO   | PRI | NULL    |       |
| employee_name   | varchar(100) | NO   |     | NULL    |       |
| employee_salary | double       | NO   |     | NULL    |       |
+-----------------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> alter table employee rename to employee
    -> ^C
mysql> alter table employee rename to employee_details;
Query OK, 0 rows affected (0.03 sec)

mysql> desc employee;
+-----------------+--------------+------+-----+---------+-------+
| Field           | Type         | Null | Key | Default | Extra |
+-----------------+--------------+------+-----+---------+-------+
| employee_id     | int          | NO   | PRI | NULL    |       |
| employee_name   | varchar(100) | NO   |     | NULL    |       |
| employee_salary | double       | NO   |     | NULL    |       |
+-----------------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)
mysql> alter table employee_details  drop primary key;
Query OK, 5 rows affected (0.10 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> desc employee_details;
+-----------------+--------------+------+-----+---------+-------+
| Field           | Type         | Null | Key | Default | Extra |
+-----------------+--------------+------+-----+---------+-------+
| employee_id     | int          | NO   |     | NULL    |       |
| employee_name   | varchar(100) | NO   |     | NULL    |       |
| employee_salary | double       | NO   |     | NULL    |       |
+-----------------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> alter table employee_details add constraint primary key(employee_id);
Query OK, 0 rows affected (0.10 sec)
Records: 0  Duplicates: 0  Warnings: 0
mysql> desc employee_details;
+-----------------+--------------+------+-----+---------+-------+
| Field           | Type         | Null | Key | Default | Extra |
+-----------------+--------------+------+-----+---------+-------+
| employee_id     | int          | NO   | PRI | NULL    |       |
| employee_name   | varchar(100) | NO   |     | NULL    |       |
| employee_salary | double       | NO   |     | NULL    |       |
+-----------------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)
