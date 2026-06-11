/*Task: Let's consider a scenario where you want to retrieve information about students

from a database table named student and display the results in ascending order based on their last names.

Student table contain column (stud_id,FirstName,LastName,Age,Phoneno,Address) add 5 records in tables.

Hint: Use orderBy clause in a ascending Order /*

mysql> show databases;
+--------------------------+
| Database                 |
+--------------------------+
| aggregation              |
| bank                     |
| demo                     |
| e_commerce               |
| ecommerce                |
| information_schema       |
| joins                    |
| joint                    |
| mysql                    |
| performance_schema       |
| sakila                   |
| sakshi                   |
| store_procedure_example  |
| student                  |
| studentinfo              |
| studentmanagementsystem1 |
| sys                      |
| world                    |
+--------------------------+
18 rows in set (0.01 sec)

mysql> use studentinfo;
Database changed
mysql> create table student(student_id int not null primary key,first_name varchar(50) not null,last_name varchar(50) not null,age int not null,phone_no int not null,address varchar(50) not null);
Query OK, 0 rows affected (0.05 sec)

mysql> desc student;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| student_id | int         | NO   | PRI | NULL    |       |
| first_name | varchar(50) | NO   |     | NULL    |       |
| last_name  | varchar(50) | NO   |     | NULL    |       |
| age        | int         | NO   |     | NULL    |       |
| phone_no   | int         | NO   |     | NULL    |       |
| address    | varchar(50) | NO   |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.07 sec)

mysql> alter table student modify phone_no varchar(50) not null;
Query OK, 0 rows affected (0.11 sec)
Records: 0  Duplicates: 0  Warnings: 0
mysql> insert into student values(101,'rushabh',' sagale',20,1234567890,'thane'),(102,'rushi','surve',22,1234560987,'manpada'),(103,'neha','nakati',24,1234509876,'mulund'),(104,'harshad',' sawant',21,5432167890,'vikhroli'),(105,'rutu',' methe',25,4567867890,'vitawa');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from student order by last_name;
+------------+------------+-----------+-----+------------+----------+
| student_id | first_name | last_name | age | phone_no   | address  |
+------------+------------+-----------+-----+------------+----------+
|        105 | rutu       |  methe    |  25 | 4567867890 | vitawa   |
|        101 | rushabh    |  sagale   |  20 | 1234567890 | thane    |
|        104 | harshad    |  sawant   |  21 | 5432167890 | vikhroli |
|        103 | neha       | nakati    |  24 | 1234509876 | mulund   |
|        102 | rushi      | surve     |  22 | 1234560987 | manpada  |
+------------+------------+-----------+-----+------------+----------+
5 rows in set (0.00 sec)

