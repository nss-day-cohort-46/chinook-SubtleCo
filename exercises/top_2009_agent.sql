SELECT "Sales Rep" "Top Sales Rep",
    MAX("Number Of Sales") "Number Of Sales",
    STRFTIME("%Y", "Invoice Date") "Year"
FROM (
        SELECT COUNT(i.InvoiceId) "Number Of Sales",
            e.FirstName || ' ' || e.LastName "Sales Rep",
            i.InvoiceDate "Invoice Date"
        FROM Invoice i
            JOIN Customer c ON i.CustomerId = c.CustomerId
            JOIN Employee e ON e.EmployeeId = c.SupportRepId
        WHERE i.InvoiceDate LIKE "%2009%"
        GROUP BY "Sales Rep"
    )