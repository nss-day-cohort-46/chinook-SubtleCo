SELECT "Sales Rep" "Top Sales Rep",
    MAX("Number Of Sales") "Number Of Sales"
FROM (
        SELECT COUNT(i.InvoiceId) "Number Of Sales",
            e.FirstName || ' ' || e.LastName "Sales Rep"
        FROM Invoice i
            JOIN Customer c ON i.CustomerId = c.CustomerId
            JOIN Employee e ON e.EmployeeId = c.SupportRepId
        GROUP BY "Sales Rep"
    )