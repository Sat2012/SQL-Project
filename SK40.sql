Select customerId, Total From invoice
Where Total<=(SELECT Avg(Total)
FROM invoice);
SELECT g.GenreId, g.Name AS GenreName, COUNT(t.TrackId) AS TotalTracksSold
FROM Genre g
JOIN Track t ON g.GenreId = t.GenreId
JOIN InvoiceLine il ON t.TrackId = il.TrackId
GROUP BY g.GenreId, g.Name
ORDER BY TotalTracksSold DESC
LIMIT 6;
SELECT 
    BillingCountry AS Country,
    SUM(Total) AS TotalSales
FROM 
    Invoice
GROUP BY 
    BillingCountry
ORDER BY 
    TotalSales DESC;
SELECT CONCAT(FirstName, ' ', LastName) AS Full_name,SUM(Total) AS Total_Spent
FROM customer
JOIN invoice
ON customer.CustomerID=invoice.CustomerId
Group BY FirstName, LastName
ORDER BY SUM(Total) DESC
LIMIT 7;
SELECT DISTINCT(COUNT(AlbumId)) AS No_of_Unique_Album FROM album;
SELECT 
    CONCAT(FirstName, ' ', LastName) AS FullName,
    Country,
    Email
FROM 
    Customer
WHERE 
    Country = 'Canada';
SELECT 
    BillingCountry AS Country,
    SUM(Total) AS TotalSales
FROM 
    Invoice
GROUP BY 
    BillingCountry
ORDER BY 
    TotalSales DESC;
SELECT 
    BillingCountry AS Country,
    SUM(Total) AS TotalSales
FROM 
    Invoice
GROUP BY 
    BillingCountry
ORDER BY 
    TotalSales DESC;
SELECT 
    g.Name AS Genre,
    COUNT(t.TrackId) AS TotalTracks
FROM 
    Genre g
JOIN 
    Track t ON g.GenreId = t.GenreId
GROUP BY 
    g.Name
ORDER BY 
    TotalTracks DESC;
SELECT 
    DATE_FORMAT(InvoiceDate, '%Y-%m') AS InvoiceMonth,
    SUM(Total) AS TotalSales
FROM 
    Invoice
GROUP BY 
    DATE_FORMAT(InvoiceDate, '%Y-%m')
ORDER BY 
    InvoiceMonth;
SELECT 
    MediaType.Name AS MediaTypeName,
    COUNT(*) AS TotalTracks
FROM 
    Track
JOIN 
    MediaType ON Track.MediaTypeId = MediaType.MediaTypeId
GROUP BY 
    MediaType.Name
ORDER BY 
    TotalTracks DESC
LIMIT 1;
SELECT 
    ar.Name AS ArtistName,
    COUNT(t.TrackId) AS TotalTracks
FROM 
    Artist ar
JOIN 
    Album al ON ar.ArtistId = al.ArtistId
JOIN 
    Track t ON al.AlbumId = t.AlbumId
GROUP BY 
    ar.ArtistId, ar.Name
ORDER BY 
    TotalTracks DESC
LIMIT 3;

