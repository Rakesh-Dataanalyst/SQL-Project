use northwind;

/*1.	Write a query to get Product name and quantityperunit */

select productname, quantityperunit 
from products;

/*2.	Write a query to get current Product list (Product ID and name)*/

select productid, productname
from products
order by productname;

/*3.	Write a query to get discontinued Product list (Product ID and name)*/

select productid, productname
from products
where discontinued = 1
order by ProductName;

/*4.	Write a query to get most expense and least expensive Product list (name and unit price)*/

Select productid, productname, unitprice
from products
order by unitprice desc;

/*5.	Write a query to get Product list (id, name, unit price) where current products cost less than $20*/

select productid, productname, unitprice
from products
where unitprice < 20
order by unitprice desc;

/*6.	Write a query to get Product list (id, name, unit price) where products cost between $15 and $25*/

select productid, productname, unitprice
from products
where unitprice between 15 and 25;

/*7.	Write a query to get Product list (name, unit price) of above average price*/

select  productname, unitprice
from products
where unitprice> (SELECT avg(UnitPrice) FROM Products);

/*8.	Write a query to get Product list (name, unit price) of ten most expensive products*/

select productid, productname, unitprice
from products
order by UnitPrice desc
limit 10;

/*9.	Write a query to count current and discontinued products*/

select count(productname)
from products
group by Discontinued;

/*10.	Write a query to get Product list (name, units on order , units in stock) 
of stock is less than the quantity on order*/

select productname, unitsonorder, unitsinstock
from products
where unitsinstock < unitsonorder;



