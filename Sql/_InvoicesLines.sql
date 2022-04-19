INSERT INTO [ArTraxTraxDb].[dbo].[InvoiceLines]
           ([CustomerId]
           ,[InvoiceId]          
           
           ,[TicketDate]
           ,[TicketNumber]
           
           ,[Description]      
           ,[Quantity]
           ,[Price]
           
           ,[IsLineTaxable]
           
           ,[TruckId]
           ,[EquipId]
           ,[LoadTypeId]
           
			,AddToInvoice
			,ProductId
			)
   
    SELECT 
      (SELECT MIN(C. Id) FROM ArTraxTraxDb.dbo.Customers C WHERE C.CustomerName =  T.CustomerName GROUP BY  C.CustomerName ) as CustomerId    
      ,isnull((SELECT MIN(Id) FROM Invoices I WHERE I.InvoiceNumber=T.InvoiceNumber),0) as InvoiceId      
      
      ,[LineDate]
      ,[TicketNo]
      
      ,[LineDesc]
      ,[Quantity]
      ,[Rate]       
      ,1
                 
      ,isnull((SELECT MIN(Id) FROM Trucks I WHERE I.Name=T.TruckCode),0) as TruckId
      ,[EquipmentId]
      ,[LoadTypeId]      
      ,0--Add To Invoice
      ,1 --ProductId
      
  FROM [LoadTracOld].[dbo].[vTicketInformation] T
  
  




