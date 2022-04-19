INSERT INTO [ArTraxTraxDb].[dbo].[Invoices]
           ([InvoiceNumber]
           ,[CustomerId]
           
           ,[InvoiceDate]
           ,[InvoiceDueDate]
           
           ,[TaxName]
           ,[TaxRate]
           ,[TaxAmount]
           ,[Subtotal]
           ,[Total]
           ,[Balance]
            
            ,Note
                      
           ,[CreatedBy]
           ,[LastUpdatedBy]
           ,[CreatedOn]
           ,[LastUpdatedOn])
  
    SELECT [InvoiceNumber]
      ,(SELECT MIN(C. Id) FROM ArTraxTraxDb.dbo.Customers C WHERE C.CustomerName =  LC.CustomerName GROUP BY  C.CustomerName ) as CustomerId
      ,[InvoiceDate]
      ,[DueDate]
      
      ,'HST'
      ,12
      ,isnull([GST],0)
      ,isnull(SubTotal,0)
      ,isnull([Total],0)
      ,ROUND(isnull(Total-PaidToDate,0),2)
      
      
      ,Notes      
      ,CreatedBy
      ,CreatedBy
      ,GETDATE()
      ,GETDATE()     
       
  FROM [LoadTracOld].[dbo].[vArInvoice] LC
  


