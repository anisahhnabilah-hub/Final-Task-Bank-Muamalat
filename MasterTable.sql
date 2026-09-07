SELECT
  c.CustomerEmail AS CustomerEmail,
  c.CustomerCity AS CustomerCity,
  o.Date AS OrderDate,
  o.Quantity AS OrderQty,
  p.ProdName AS ProductName,
  p.Price AS ProductPrice,
  pc.CategoryName AS ProductCategoryName,
  o.Quantity * p.Price AS TotalSales
FROM
  `project-dc175103-acb0-45f5-bdc.FinalTask_BankMuamalat.Customers` AS c
JOIN
  `project-dc175103-acb0-45f5-bdc.FinalTask_BankMuamalat.Orders` AS o
  ON c.CustomerID = o.CustomerID
JOIN
  `project-dc175103-acb0-45f5-bdc.FinalTask_BankMuamalat.Products` AS p
  ON o.ProdNumber = p.ProdNumber
JOIN
  `project-dc175103-acb0-45f5-bdc.FinalTask_BankMuamalat.ProductCategory` AS pc
  ON p.Category = pc.CategoryID
ORDER BY
  o.Date ASC;