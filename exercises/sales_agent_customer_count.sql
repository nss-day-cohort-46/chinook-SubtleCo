SELECT COUNT(c.CustomerId) Customers,
    e.FirstName || ' ' || e.LastName Employee
FROM Customer c
    JOIN Employee e ON e.EmployeeId = c.SupportRepId
GROUP BY c.SupportRepId