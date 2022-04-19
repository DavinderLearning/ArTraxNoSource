INSERT INTO [ArTraxTraxDb].[dbo].[Trucks]
           ([Name]
           ,[ShortCode]
           ,[IsContractor])
  SELECT [TruckCode]
      ,[TruckCode]
      ,isnull([IsCont],0)
  FROM [LoadTracOld].[dbo].[tblTrucks]