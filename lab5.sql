CREATE DATABASE LAB5;
CREATE TABLE customers (
    customer_id varchar(5) not null,
    cust_name varchar(35) not null,
    city varchar(20) not null,
    grade varchar(3) not null,
    salesman_id varchar(5) not null
);
CREATE TABLE orders (
    ord_no varchar(5) not null,
    purch_amt varchar null,
    ord_date varchar null,
    customer_id varchar(5) not null,
    salesman_id varchar(5) not null
);
INSERT INTO customers (customer_id, cust_name, city, grade, salesman_id) VALUES ('3002','Nick Rimando','New York','100','5001');
INSERT INTO customers (customer_id, cust_name, city, grade, salesman_id) VALUES ('3005','Graham Zusi','California','200','5002');
INSERT INTO customers (customer_id, cust_name, city, grade, salesman_id) VALUES ('3001','Brad Guzan','London',' ','5005');
INSERT INTO customers (customer_id, cust_name, city, grade, salesman_id) VALUES ('3004','Fabian Johns','Paris','300','5006');
INSERT INTO customers (customer_id, cust_name, city, grade, salesman_id) VALUES ('3007','Brad Davis','New York','200','5001');
INSERT INTO customers (customer_id, cust_name, city, grade, salesman_id) VALUES ('3009','Geoff Camero','Berlin','100','5003');
INSERT INTO customers (customer_id, cust_name, city, grade, salesman_id) VALUES ('3008','Julian Green','London','300','5002');

INSERT INTO orders (ord_no, purch_amt, ord_date, customer_id, salesman_id) VALUES ('70001','150','2012-10-05','3005','5002');
INSERT INTO orders (ord_no, purch_amt, ord_date, customer_id, salesman_id) VALUES ('70009','270','2012-09-10','3001','5005');
INSERT INTO orders (ord_no, purch_amt, ord_date, customer_id, salesman_id) VALUES ('70002','65','2012-10-05','3002','5001');
INSERT INTO orders (ord_no, purch_amt, ord_date, customer_id, salesman_id) VALUES ('70004','110','2012-08-17','3009','5003');
INSERT INTO orders (ord_no, purch_amt, ord_date, customer_id, salesman_id) VALUES ('70007','948','2012-09-10','3005','5002');
INSERT INTO orders (ord_no, purch_amt, ord_date, customer_id, salesman_id) VALUES ('70005','2400','2012-07-27','3007','5001');
INSERT INTO orders (ord_no, purch_amt, ord_date, customer_id, salesman_id) VALUES ('70008','5760','2012-09-10','3002','5001');

SELECT SUM(purch_amt) FROM orders;

SELECT AVG(purch_amt) FROM orders;

SELECT count(*) FROM customers;

SELECT MIN(purch_amt) FROM orders;

SELECT * FROM customers WHERE cust_name LIKE '%b';

SELECT Customers.cast_name,Customers.city,Orders.* FROM orders INNER JOIN customers on customers.customer_id = orders.customer_id WHERE customers.city = 'New York';

SELECT customer_id, ord_date, MAX(purch_amt>10) FROM orders;

SELECT SUM(grade) FROM customers;

SELECT count(*) FROM customers GROUP BY customers;

SELECT * FROM orders;
SELECT * FROM customers;
