SELECT e.FirstName, e.LastName, i.*
FROM Invoice i
JOIN Customer c ON c.CustomerId = i.CustomerId
JOIN Employee e ON e.EmployeeId = c.SupportRepId
ORDER BY e.EmployeeId