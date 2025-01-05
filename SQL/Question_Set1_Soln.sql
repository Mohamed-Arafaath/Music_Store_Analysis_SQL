--SQL PROJECT- MUSIC STORE DATA ANALYSIS

--Question Set 1 - Easy
--1. Who is the senior most employee based on job title?
select top 1 * 
from employee
order by levels desc


--2. Which countries have the most Invoices?
select BillingCountry, count(InvoiceId) as count
from invoice
group by BillingCountry
order by count(InvoiceId) desc


--3. What are top 3 values of total invoice?
with temp as(
select *, 
	rank() over(order by Total desc) as rk
from invoice)
select *
from temp
where rk <=3
----or simply----
select top 3 *
from invoice
order by Total desc --but this will neglect the top 3 vlaues which have same total 


--4. Which city has the best customers? We would like to throw a promotional Music 
--Festival in the city we made the most money. Write a query that returns one city that 
--has the highest sum of invoice totals. Return both the city name & sum of all invoice 
--totals
select top 1 BillingCity, sum(Total) as TotalSales
from invoice
group by BillingCity
order by sum(Total) desc


--5. Who is the best customer? The customer who has spent the most money will be 
--declared the best customer. Write a query that returns the person who has spent the 
--most money
select top 1 c.CustomerId, c.FirstName, c.LastName , sum(i.Total) as total_purchase
from Customer c, Invoice i
where c.CustomerId = i.CustomerId
group by c.CustomerId, c.FirstName, c.LastName 
order by sum(i.Total) desc