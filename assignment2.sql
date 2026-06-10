mysql> show databases;
+--------------------------+
| Database                 |
+--------------------------+
| aggregation              |
| demo                     |
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
15 rows in set (0.07 sec)

mysql> use e_commerce;
Database changed
mysql> show tables;
+----------------------+
| Tables_in_e_commerce |
+----------------------+
| customer             |
| employee_details     |
| order_details        |
| product              |
+----------------------+
4 rows in set (0.01 sec)

mysql> select * from employee_details;
+-------------+---------------+-----------------+
| employee_id | employee_name | employee_salary |
+-------------+---------------+-----------------+
|           1 | purva sagale  |           20000 |
|           2 | jeet sagale   |           70000 |
|           3 | priya desai   |           60000 |
|           4 | riya more     |           50000 |
|           5 | jiva sagale   |           90000 |
+-------------+---------------+-----------------+
5 rows in set (0.01 sec)
mysql> select * from employee_details limit 3;
+-------------+---------------+-----------------+
| employee_id | employee_name | employee_salary |
+-------------+---------------+-----------------+
|           1 | purva sagale  |           20000 |
|           2 | jeet sagale   |           70000 |
|           3 | priya desai   |           60000 |
+-------------+---------------+-----------------+
3 rows in set (0.00 sec)

mysql> select * from employee_details limit 2;
+-------------+---------------+-----------------+
| employee_id | employee_name | employee_salary |
+-------------+---------------+-----------------+
|           1 | purva sagale  |           20000 |
|           2 | jeet sagale   |           70000 |
+-------------+---------------+-----------------+
2 rows in set (0.00 sec)

mysql> select * from employee_details order by employee_salary;
+-------------+---------------+-----------------+
| employee_id | employee_name | employee_salary |
+-------------+---------------+-----------------+
|           1 | purva sagale  |           20000 |
|           4 | riya more     |           50000 |
|           3 | priya desai   |           60000 |
|           2 | jeet sagale   |           70000 |
|           5 | jiva sagale   |           90000 |
+-------------+---------------+-----------------+
5 rows in set (0.00 sec)

mysql> select * from employee_details order by employee_name;
+-------------+---------------+-----------------+
| employee_id | employee_name | employee_salary |
+-------------+---------------+-----------------+
|           2 | jeet sagale   |           70000 |
|           5 | jiva sagale   |           90000 |
|           3 | priya desai   |           60000 |
|           1 | purva sagale  |           20000 |
|           4 | riya more     |           50000 |
+-------------+---------------+-----------------+
5 rows in set (0.00 sec)

mysql> select * from employee_details order by employee_name desc;
+-------------+---------------+-----------------+
| employee_id | employee_name | employee_salary |
+-------------+---------------+-----------------+
|           4 | riya more     |           50000 |
|           1 | purva sagale  |           20000 |
|           3 | priya desai   |           60000 |
|           5 | jiva sagale   |           90000 |
|           2 | jeet sagale   |           70000 |
+-------------+---------------+-----------------+
5 rows in set (0.00 sec)

mysql> select * from employee_details order by employee_salary desc;
+-------------+---------------+-----------------+
| employee_id | employee_name | employee_salary |
+-------------+---------------+-----------------+
|           5 | jiva sagale   |           90000 |
|           2 | jeet sagale   |           70000 |
|           3 | priya desai   |           60000 |
|           4 | riya more     |           50000 |
|           1 | purva sagale  |           20000 |
+-------------+---------------+-----------------+
5 rows in set (0.00 sec)

 ysql> select * from employee_details order by employee_salary desc limit 2;
+-------------+---------------+-----------------+
| employee_id | employee_name | employee_salary |
+-------------+---------------+-----------------+
|           5 | jiva sagale   |           90000 |
|           2 | jeet sagale   |           70000 |
+-------------+---------------+-----------------+
2 rows in set (0.00 sec)

mysql> select *from customer;
+-------------+-------+-------+----------------------------+------------+---------------+----------+
| customer_id | name  | city  | email                      | phone_no   | address       | pin_code |
+-------------+-------+-------+----------------------------+------------+---------------+----------+
| c102        | purva | thane | purva.sagale2006@gmail.com | 8928551180 | louiswadi     |   400604 |
| c103        | neha  | thane | neha@gmail.com             | 3625372589 | nitin company |   400601 |
| c104        | diya  | thane | diya@gmail.com             | 3265356789 | lokmanyanagar |   400602 |
| c105        | siya  | thane | siya@gmail.com             | 1234567890 | lokmanya      |   400604 |
+-------------+-------+-------+----------------------------+------------+---------------+----------+
4 rows in set (0.04 sec)
mysql> select distinct city from customer;
+-------+
| city  |
+-------+
| thane |
+-------+
1 row in set (0.00 sec)

mysql> select * from customer;
+-------------+-------+-------+----------------------------+------------+---------------+----------+
| customer_id | name  | city  | email                      | phone_no   | address       | pin_code |
+-------------+-------+-------+----------------------------+------------+---------------+----------+
| c102        | purva | thane | purva.sagale2006@gmail.com | 8928551180 | louiswadi     |   400604 |
| c103        | neha  | thane | neha@gmail.com             | 3625372589 | nitin company |   400601 |
| c104        | diya  | thane | diya@gmail.com             | 3265356789 | lokmanyanagar |   400602 |
| c105        | siya  | thane | siya@gmail.com             | 1234567890 | lokmanya      |   400604 |
+-------------+-------+-------+----------------------------+------------+---------------+----------+
4 rows in set (0.00 sec)

mysql> select * from customer where customer_id between 'c101' and 'c104';
+-------------+-------+-------+----------------------------+------------+---------------+----------+
| customer_id | name  | city  | email                      | phone_no   | address       | pin_code |
+-------------+-------+-------+----------------------------+------------+---------------+----------+
| c102        | purva | thane | purva.sagale2006@gmail.com | 8928551180 | louiswadi     |   400604 |
| c103        | neha  | thane | neha@gmail.com             | 3625372589 | nitin company |   400601 |
| c104        | diya  | thane | diya@gmail.com             | 3265356789 | lokmanyanagar |   400602 |
+-------------+-------+-------+----------------------------+------------+---------------+----------+
3 rows in set (0.01 sec)

mysql> select * from order
    -> _de^C
mysql> select * from order_details where order_date between '2026-06-04' and '2026-06-08';
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
| order_id | customer_id | product_id | quantity | total_price | payment_mode | order_date          | order_status |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
|      101 | c102        | p102       |       20 |      200000 | gpay         | 2026-06-06 00:00:00 | shipping     |
|      102 | c102        | p102       |       20 |      200000 | gpay         | 2026-06-06 00:00:00 | shipping     |
|      103 | c102        | p102       |       20 |      200000 | gpay         | 2026-06-06 00:00:00 | shipping     |
|      104 | c102        | p102       |       10 |      100000 | gpay         | 2026-06-08 00:00:00 | delivered    |
|      105 | c105        | p104       |       15 |     1200000 | gpay         | 2026-06-08 00:00:00 | delivered    |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
5 rows in set (0.02 sec)

mysql> select * from customer;
+-------------+-------+-------+----------------------------+------------+---------------+----------+
| customer_id | name  | city  | email                      | phone_no   | address       | pin_code |
+-------------+-------+-------+----------------------------+------------+---------------+----------+
| c102        | purva | thane | purva.sagale2006@gmail.com | 8928551180 | louiswadi     |   400604 |
| c103        | neha  | thane | neha@gmail.com             | 3625372589 | nitin company |   400601 |
| c104        | diya  | thane | diya@gmail.com             | 3265356789 | lokmanyanagar |   400602 |
| c105        | siya  | thane | siya@gmail.com             | 1234567890 | lokmanya      |   400604 |
+-------------+-------+-------+----------------------------+------------+---------------+----------+
4 rows in set (0.00 sec)

mysql> select * from customer where  customer_id in('c102','c105');
+-------------+-------+-------+----------------------------+------------+-----------+----------+
| customer_id | name  | city  | email                      | phone_no   | address   | pin_code |
+-------------+-------+-------+----------------------------+------------+-----------+----------+
| c102        | purva | thane | purva.sagale2006@gmail.com | 8928551180 | louiswadi |   400604 |
| c105        | siya  | thane | siya@gmail.com             | 1234567890 | lokmanya  |   400604 |
+-------------+-------+-------+----------------------------+------------+-----------+----------+
2 rows in set (0.00 sec)

mysql> select * from customer where  customer_id not in('c102','c105');
+-------------+------+-------+----------------+------------+---------------+----------+
| customer_id | name | city  | email          | phone_no   | address       | pin_code |
+-------------+------+-------+----------------+------------+---------------+----------+
| c103        | neha | thane | neha@gmail.com | 3625372589 | nitin company |   400601 |
| c104        | diya | thane | diya@gmail.com | 3265356789 | lokmanyanagar |   400602 |
+-------------+------+-------+----------------+------------+---------------+----------+
2 rows in set (0.00 sec)

mysql> select * from customer where city is null;
Empty set (0.04 sec)

mysql> select * from customer where city is not null;
+-------------+-------+-------+----------------------------+------------+---------------+----------+
| customer_id | name  | city  | email                      | phone_no   | address       | pin_code |
+-------------+-------+-------+----------------------------+------------+---------------+----------+
| c102        | purva | thane | purva.sagale2006@gmail.com | 8928551180 | louiswadi     |   400604 |
| c103        | neha  | thane | neha@gmail.com             | 3625372589 | nitin company |   400601 |
| c104        | diya  | thane | diya@gmail.com             | 3265356789 | lokmanyanagar |   400602 |
| c105        | siya  | thane | siya@gmail.com             | 1234567890 | lokmanya      |   400604 |
+-------------+-------+-------+----------------------------+------------+---------------+----------+
4 rows in set (0.00 sec)

mysql> select * from customer where city='thane' and 'address=louiswadi';
Empty set, 1 warning (0.00 sec)

mysql> select * from customer where city='thane' or 'address=louiswadi';
+-------------+-------+-------+----------------------------+------------+---------------+----------+
| customer_id | name  | city  | email                      | phone_no   | address       | pin_code |
+-------------+-------+-------+----------------------------+------------+---------------+----------+
| c102        | purva | thane | purva.sagale2006@gmail.com | 8928551180 | louiswadi     |   400604 |
| c103        | neha  | thane | neha@gmail.com             | 3625372589 | nitin company |   400601 |
| c104        | diya  | thane | diya@gmail.com             | 3265356789 | lokmanyanagar |   400602 |
| c105        | siya  | thane | siya@gmail.com             | 1234567890 | lokmanya      |   400604 |
+-------------+-------+-------+----------------------------+------------+---------------+----------+
4 rows in set, 1 warning (0.01 sec)



