● StudentID (Foreign key) 
● Date 
● InstructorName 
● Feedback

Add 5 Records in table

 */


mysql> create database StudentManagementSystem;
Query OK, 1 row affected (0.01 sec)

mysql> use StudentManagementSystem;
Database changed
mysql> create table student(StudentID varchar(10) not null primary key,Name varchar(30) not null,Age int not null,Address varchar(50) not null);
Query OK, 0 rows affected (0.03 sec)

mysql> desc student;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| StudentID | varchar(10) | NO   | PRI | NULL    |       |
| Name      | varchar(30) | NO   |     | NULL    |       |
| Age       | int         | NO   |     | NULL    |       |
| Address   | varchar(50) | NO   |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

mysql> insert  into student(student_id,name,age,address)values('s101','purva',20,'thane'),('s102','neha',20,'vartaknagar'),('s103','siya',21,'lokmanya'),('s104','tanvi',19,'vitawa'),('s105','diya',22,'thane');
Query OK, 5 rows affected (0.02 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from student;
+------------+-------+-----+-------------+
| student_id | name  | age | address     |
+------------+-------+-----+-------------+
| s101       | purva |  20 | thane       |
| s102       | neha  |  20 | vartaknagar |
| s103       | siya  |  21 | lokmanya    |
| s104       | tanvi |  19 | vitawa      |
| s105       | diya  |  22 | thane       |
+------------+-------+-----+-------------+
mysql> INSERT INTO feedback
    ->     (feedback_id, student_id, date, instructor_name, feedback)
    -> VALUES
    ->     ('101', 's101', '2026-06-08', 'John', 'Good'),
    ->     ('102', 's102', '2026-06-05', 'John', 'Good'),
    ->     ('103', 's103', '2026-06-04', 'John', 'Neutral'),
    ->     ('104', 's104', '2026-06-06', 'John', 'Excellent'),
    ->     ('105', 's105', '2026-06-07', 'John', 'Average');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from feedback;
+-------------+------------+---------------------+-----------------+-----------+
| feedback_id | student_id | date                | instructor_name | feedback  |
+-------------+------------+---------------------+-----------------+-----------+
| 101         | s101       | 2026-06-08 00:00:00 | John            | Good      |
| 102         | s102       | 2026-06-05 00:00:00 | John            | Good      |
| 103         | s103       | 2026-06-04 00:00:00 | John            | Neutral   |
| 104         | s104       | 2026-06-06 00:00:00 | John            | Excellent |
| 105         | s105       | 2026-06-07 00:00:00 | John            | Average   |
+-------------+------------+---------------------+-----------------+-----------+
5 rows in set (0.00 sec)
