--1

SELECT LastName || ' ' || FirstName AS fullName, CustomerId, Country
from Customer
WHERE Country != 'USA'
ORDER BY country DESC;

--2

SELECT LastName || ' ' || FirstName AS fullName, CustomerId, Country
from Customer
WHERE Country = 'Brazil'
ORDER BY fullName DESC;

--3

SELECT LastName || ' ' || FirstName AS fullName, InvoiceId, InvoiceDate, BillingCountry
from Customer c
    JOIN Invoice I on i.customerId = c.CustomerId
WHERE i.BillingCountry = 'Brazil';

--4

SELECT LastName || ' ' || FirstName AS fullName
FROM Employee
WHERE Employee.Title LIKE "%Sales%";

--5

SELECT DISTINCT BillingCountry
FROM Invoice
ORDER BY BillingCountry ASC;

--6

SELECT e.LastName || ' ' || e.FirstName AS fullName,
    i.InvoiceId,
    i.total
 FROM Invoice i
    JOIN Customer c on c.CustomerId = i.CustomerId
    JOIN Employee e on e.EmployeeId = c.SupportRepId
    WHERE e.Title LIKE "%Sales%" 
    ORDER BY fullName;

--7

Select c.LastName || ' ' || c.FirstName AS CustomerName,
i.Total,
i.BillingCountry,
e.FirstName || ' ' || e.LastName AS EmployeeName
FROM Customer c
    JOIN Employee e on e.EmployeeId = c.SupportRepId
    JOIN Invoice i on i.CustomerId = c.CustomerId
    ORDER BY CustomerName ASC;

--8

SELECT COUNT(*) AS InvTotal2009
FROM Invoice i
WHERE i.InvoiceDate LIKE "2009%";

SELECT COUNT(*) AS InvTotal2011
FROM Invoice i
WHERE i.InvoiceDate LIKE "2011%";


--9

SELECT SUM(Total) as TotalSales2009
FROM Invoice i
WHERE i.InvoiceDate LIKE "2009%";

SELECT SUM(Total) as TotalSales2011
FROM Invoice i
WHERE i.InvoiceDate LIKE "2011%";

--10

SELECT COUNT(InvoiceLineId) as totalLinetItemsFor37
FROM InvoiceLine
WHERE InvoiceId = 37;

--11

SELECT Count(InvoiceId), InvoiceID
FROM InvoiceLine
GROUP BY
    InvoiceId;

--12

SELECT InvoiceLineId, Name
FROM InvoiceLine i
JOIN Track t on t.TrackId = i.TrackId
ORDER BY InvoiceId ASC;

--13

SELECT InvoiceLineId, t.Name, ar.name as Artist
FROM InvoiceLine i
JOIN Track t on t.TrackId = i.TrackId
JOIN Album a on a.AlbumId = t.AlbumId
JOIN Artist ar on ar.ArtistId = a.ArtistId
ORDER BY InvoiceId ASC;