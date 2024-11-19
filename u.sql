--1
create TABLE if not exists products (pr_id serial PRIMARY key ,
                  product_name varchar(250),
                  catigory varchar (250));

CREATE TABLE if not exists sales (sale_id serial PRIMARY key ,
                  product_name varchar(150),
                  quanttity int );

CREATE TABLE if not exists investry (invest_id serial PRIMARY key,
                    produc_name VARCHAR(250),
                    stock int);
INSERT into products(product_name,catigory) VALUES
('Fridge','Elektronik'),
('Vacumcleaner','Elektronik'),
('Dask ','Furniture '),
('Chair ','Furniture '),
('Pen','Stationery ');


INSERT into sales(product_name,quanttity) VALUES
('Fridge',5),
('Vacumcleaner',7),
('Chair',8),
('pen',40;


insert INTO investry(produc_name,stock) VALUES
('Fridge',20),
('Vacumcleaner',10),
('Bad',15),
('Eraser',100)

SELECT product_name  from sales
UNION
SELECT  produc_name from investry;



SELECT product_name  from sales
INTERSECT
SELECT  produc_name from investry;



SELECT product_name  from sales
EXCEPT
SELECT  produc_name from investry;

SELECT DISTINCT product_name
from sales;
