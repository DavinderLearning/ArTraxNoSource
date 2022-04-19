INSERT INTO [ArTraxTraxDb].[dbo].[Customers]
           ([CustomerName]
           ,[AddressLine1]
           ,[City]
           ,[Province]
           ,PostalCode
           ,Country                    
      
           ,[MainContact]
           ,[EmailAddress]
           ,[ReceiveInvoiceByEmail]
           
           ,[Phone]
           ,[Cell]
           ,[Fax]      
           ,[TaxExempt]
      
           ,[CreatedBy]
           ,[LastUpdatedBy]
           ,[CreatedOn]
           ,[LastUpdatedOn])
SELECT
      [CustomerName]
      ,[BillingAddress]
      ,[City]
      ,[Province]      
      ,[PostalCode]
      ,[Country]
      
      ,''
      ,''
      ,0     
      
      ,[Phone]
      ,[Cell]
      ,[Fax]      
      ,0      
            
      ,[UpdatedBy]
      ,[UpdatedBy]
      ,GETDATE()
      ,GETDATE()
FROM LoadTracOld.dbo.tblCustomers