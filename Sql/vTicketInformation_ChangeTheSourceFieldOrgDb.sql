
ALTER VIEW [dbo].[vTicketInformation]
AS
SELECT     dbo.tblTickets.TicketID, dbo.tblTickets.CustomerID, dbo.tblCustomers.CustomerCode, dbo.tblTickets.LineDate, dbo.tblTickets.TicketNo, dbo.tblTrucks.TruckCode, 
                      dbo.tblTickets.LineDesc, dbo.tblTickets.Quantity, dbo.tblTickets.Rate, dbo.tblTickets.LineTotal, 
                      CASE dbo.tblTickets.IsCont WHEN 1 THEN 'Yes' ELSE 'No' END AS IsCont, dbo.tblTickets.ContRate, dbo.tblTickets.InvoiceNumber, dbo.tblTickets.IsCont AS IsContId, 
                      dbo.tblTickets.TruckId, dbo.tblTickets.IsBilled, 0 AS Process, dbo.tblEquipment.EquipmentId, dbo.tblEquipment.Equipment, dbo.tblLoadType.LoadTypeId, 
                      dbo.tblLoadType.LoadType, dbo.tblTickets.Loads, dbo.tblTickets.Tons, dbo.tblTickets.Hours, dbo.tblTickets.DumpFees, dbo.tblCustomers.CustomerName
FROM         dbo.tblTickets INNER JOIN
                      dbo.tblTrucks ON dbo.tblTickets.TruckId = dbo.tblTrucks.TruckId INNER JOIN
                      dbo.tblCustomers ON dbo.tblCustomers.CustomerID = dbo.tblTickets.CustomerID INNER JOIN
                      dbo.tblLoadType ON dbo.tblTickets.LoadType = dbo.tblLoadType.LoadTypeId INNER JOIN
                      dbo.tblEquipment ON dbo.tblTickets.EquipType = dbo.tblEquipment.EquipmentId

GO