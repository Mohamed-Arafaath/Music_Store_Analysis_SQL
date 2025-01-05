--SQL PROJECT- MUSIC STORE DATA ANALYSIS

--Question Set 2 – Moderate
--1. Write a query to return the email, first name, last name, & Genre of all Rock Music 
--listeners. Return your list ordered alphabetically by email starting with A
select DISTINCT c.Email, c.FirstName, c.LastName, g.Name
from Customer c --, Invoice i, InvoiceLine il, Track t, Genre g
JOIN Invoice i ON c.CustomerId = i.CustomerId
JOIN InvoiceLine il ON i.InvoiceId = il.InvoiceId
JOIN Track t ON il.TrackId = t.TrackId
JOIN Genre g ON t.GenreId = g.GenreId
where lower(g.Name) like '%rock%'
order by c.Email 


--2. Let's invite the artists who have written the most rock music in our dataset. Write a 
--query that returns the Artist name and total track count of the top 10 rock bands
select top 10 a.ArtistId, a.Name, count(t.TrackId) as tracks_count
from Artist a, Album al, track t, genre g
where a.ArtistId = al.ArtistId
	and al.AlbumId = t.AlbumId 
	and t.GenreId=g.GenreId 
	and lower(g.Name) like '%rock%'
group by a.ArtistId, a.Name
order by count(t.TrackId) desc


--3. Return all the track names that have a song length longer than the average song length. 
--Return the Name and Milliseconds for each track. Order by the song length with the 
--longest songs listed first
SELECT t.Name, t.Milliseconds, 
       (SELECT AVG(t1.Milliseconds) FROM Track t1) AS avg_length
FROM Track t
WHERE t.Milliseconds > (
    SELECT AVG(t1.Milliseconds) 
    FROM Track t1
)
ORDER BY t.Milliseconds DESC;



--4. Find Customers Who Purchased More Than 10 Tracks
--Write a query to find the email, first name, last name, and total number of tracks purchased 
--by customers who have bought more than 10 tracks. Sort the result by the total number of tracks 
--purchased in descending order.
select c.CustomerId, c.Email, c.FirstName, c.LastName, count(il.trackId) as track_count
from Customer c 
JOIN Invoice i ON c.CustomerId = i.CustomerId
JOIN InvoiceLine il ON i.InvoiceId = il.InvoiceId
group by c.CustomerId, c.Email, c.FirstName, c.LastName
having count(il.trackId) > 10
order by count(il.trackId) desc



--5. List All Albums with Tracks in Multiple Genres
--Write a query to return the album title and the number of unique genres in which its tracks 
--appear. Return only albums with tracks in more than one genre. Sort the result by the number 
--of genres in descending order.
select a.title , count(distinct g.GenreId) as Genre_Count
from album a, track t, genre g
where a.AlbumId = t.AlbumId
	and t.GenreId = g.GenreId
group by a.title
having count(distinct g.GenreId) > 1
order by Genre_Count desc



--6. Top 5 Cities by Unique Customers
--Write a query to find the top 5 cities with the highest number of unique customers. Return the 
--city name and the count of unique customers in descending order.

select top 5 city, count(distinct CustomerId) as Customer_count
from customer 
group by city
order by Customer_count desc
--OFFSET 0 ROWS FETCH NEXT 5 ROWS ONLY;