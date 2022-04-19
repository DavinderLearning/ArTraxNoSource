
INSERT INTO [dbo].[Equips] ([Name]) VALUES ('Truck')
GO
INSERT INTO [dbo].[Equips] ([Name]) VALUES ('TnP')
GO
INSERT INTO [dbo].[Equips] ([Name]) VALUES ('TnT')
GO
INSERT INTO [dbo].[Equips] ([Name]) VALUES ('4XL')
GO

INSERT INTO [dbo].[LoadTypes] ([Name]) VALUES ('Load')
GO
INSERT INTO [dbo].[LoadTypes] ([Name]) VALUES ('Hours')
GO
INSERT INTO [dbo].[LoadTypes] ([Name]) VALUES ('Tons')
GO
INSERT INTO [dbo].[LoadTypes] ([Name]) VALUES ('Dump Fees')
GO
INSERT INTO [dbo].[LoadTypes] ([Name]) VALUES ('Misc')
GO
INSERT INTO [dbo].[LoadTypes] ([Name]) VALUES ('Toll')
GO

GO
INSERT INTO [dbo].Products([Name]) VALUES ('NA')
GO

INSERT INTO dbo.SystemSettings(NextInvoiceNumber) values(2000)
GO
INSERT INTO dbo.TaxRates(Name,Rate,StartDate,EndDate) values('HST',12,'5/5/2012','3/1/2013')
