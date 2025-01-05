--SQL PROJECT- MUSIC STORE DATA ANALYSIS

--Question Set 3 – Advance
--1. Find how much amount spent by each customer on artists? Write a query to return
--customer name, artist name and total spent
select c.CustomerId,c.FirstName, c.LastName, ar.ArtistId, ar.Name as artist_name,sum(il.UnitPrice*il.Quantity) as total_spent
from Customer c, Invoice i, InvoiceLine il, track t, album a, Artist ar
where C.CustomerId = i.CustomerId
	and i.InvoiceId = il.InvoiceId 
	and il.trackId = t.trackId
	and t.AlbumId = a.AlbumId
	and a.ArtistId = ar.ArtistId
group by c.CustomerId,c.FirstName, c.LastName, ar.ArtistId, ar.Name
order by sum(il.UnitPrice*il.Quantity) desc


--2. We want to find out the most popular music Genre for each country. We determine the 
--most popular genre as the genre with the highest amount of purchases. Write a query 
--that returns each country along with the top Genre. For countries where the maximum 
--number of purchases is shared return all Genres
with temp as(
select c.Country, t.GenreId, g.Name, count(il.UnitPrice*il.Quantity) as purchase,
	rank() over(partition by c.Country order by count(il.UnitPrice*il.Quantity) desc) as rk
from invoice i, InvoiceLine il, track t, genre g, customer c
where c.CustomerId = i.CustomerId
	and i.InvoiceId = il.InvoiceId 
	and il.trackId = t.trackId
	and t.GenreId = g.GenreId
group by c.Country, t.GenreId, g.Name)
select Country, Name, purchase
from temp
where rk=1



--3. Write a query that determines the customer that has spent the most on music for each 
--country. Write a query that returns the country along with the top customer and how
--much they spent. For countries where the top amount spent is shared, provide all 
--customers who spent this amount
with temp as(
select c.Country,  c.CustomerId, c.FirstName, c.LastName, sum(i.Total) as amount_spent,
	rank() over(partition by c.country order by sum(i.Total) desc) as rk
from customer c, invoice i
where c.CustomerId = i.CustomerId
	--and i.InvoiceId = il.InvoiceLineId
group by c.Country,  c.CustomerId, c.FirstName, c.LastName
)
select Country,  CustomerId, FirstName, LastName, amount_spent
from temp
where rk=1
order by Country

--4. Revenue Contribution by Media Type for Each Genre
--Write a query to return the genre name, media type name, and total revenue generated for each 
--combination. Sort the results by revenue in descending order.
select g.Name as genre, m.name as media_type, sum(il.UnitPrice*il.Quantity) as revenue
from genre g, track t, MediaType m, InvoiceLine il
where g.GenreId = t.GenreId
	and m.MediaTypeId = t.MediaTypeId
	and t.TrackId = il.TrackId
group by g.Name,  m.name
order by revenue desc




--5. Customer Spending on Top 3 Genres
--Write a query to return the customer ID, first name, last name, and total amount spent for each 
--of the top 3 most popular genres. Sort the result by the genre and spending in descending order.
select c.CustomerId, c.FirstName, c.LastName, g.name as genre_name, sum(il.UnitPrice*il.Quantity) as amount,
	rank() over(partition by c.CustomerId order by sum(il.UnitPrice*il.Quantity) desc) as rk
from customer c, invoice i, InvoiceLine il, track t, Genre g
where c.CustomerId = i.CustomerId
	and i.InvoiceId = il.InvoiceId 
	and il.trackId = t.trackId
	and t.GenreId = g.GenreId
	and t.GenreId in (select top 3 t.GenreId
		from genre g, InvoiceLine il, track t
		where  il.trackId = t.trackId
			and t.GenreId = g.GenreId
		group by t.genreId
		order by count(il.InvoiceLineId) desc
		)
group by c.CustomerId, c.FirstName, c.LastName, g.name
order by g.name desc, amount desc



--6. Tracks That Appear in the Most Playlists
--Write a query to find the names of tracks that appear in the most playlists. Return the track 
--name and the total number of playlists in which it appears. Sort the result by the number of 
--playlists in descending order and limit the result to the top 10 tracks.

select top 10 t.TrackId, t.Name as track_name, count(p.PlaylistId) as playlist_count
from track t, Playlist p, PlaylistTrack pt
where t.TrackId = pt.TrackId
	and pt.playlistId = p.playlistId
group by  t.TrackId, t.Name 
order by playlist_count desc