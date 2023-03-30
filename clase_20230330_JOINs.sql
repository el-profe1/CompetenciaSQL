/** 
JOINs
Ejercicios clase
2023-03-30
*/
USE Chinook;
select c.FirstName
,c.LastName
,c.City
,c.Email
,Count(i.InvoiceId) as total_facturas
from Customer c join Invoice i on c.CustomerId = i.CustomerId
Group by c.FirstName,c.LastName,c.City,c.Email
order by 1 asc
;

SELECT t.Name
	,t.trackID
	,al.Title
	,al.ArtistId
FROM Album al
LEFT JOIN Track t ON al.AlbumId = t.AlbumId
WHERE al.Title = 'For Those About To Rock We Salute You';


SELECT 
al.Title
,ar.Name
,ar.ArtistId
,count(ar.ArtistId) as freq
FROM Artist ar LEFT JOIN Album al
ON ar.ArtistId = al.ArtistId
WHERE al.AlbumId IS NULL 
GROUP BY al.Title, ar.Name,ar.ArtistId
ORDER BY ArtistId ASC
;