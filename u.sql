--1-misol
create TABLE if not exists products (pr_id serial PRIMARY key ,
                  product_name varchar(250),
                  catigory varchar (250));

CREATE TABLE if not exists sales (sale_id serial PRIMARY key ,
                  product_name varchar(150),
                  quanttity int );

CREATE TABLE if not exists investry (invest_id serial PRIMARY key,
                    produc_name VARCHAR(250),
                    stock int);
--2-misol
INSERT into products(product_name,catigory) VALUES
('Laptop','Elektronik'),
('telefon','Elektronik'),
('Table ','Furniture '),
('Chair ','Furniture '),
('Notebook','Stationery ');


INSERT into sales(product_name,quanttity) VALUES
('Laptop',10),
('phone',5),
('table',2),
('pen',50);


insert INTO investry(produc_name,stock) VALUES
('laptop',20),
('phone',10),
('chair',15),
('notebook',100)
--3-misol
SELECT product_name  from sales
UNION
SELECT  produc_name from investry;
--4-misol


SELECT product_name  from sales
INTERSECT
SELECT  produc_name from investry;

--5-misol


SELECT product_name  from sales
EXCEPT
SELECT  produc_name from investry;

--6-misol
SELECT DISTINCT product_name
from sales;
