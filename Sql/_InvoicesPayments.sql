INSERT INTO [ArTraxTraxDb].[dbo].[InvoicePayments]
           ([InvoiceId]
           ,[CheckNumber]
           ,[IsDedection]

           ,[Note]
           ,[PaymentDate]
           ,[Amount])
           
           
SELECT
 isnull((SELECT Id FROM Invoices I WHERE I.InvoiceNumber=PD.InvoiceNumber),0) as ID
, ChequeNumber
,0

,''
, ChequeDate
--, dbo.tblArPayments.Amount AS ChequeAmount
, P.Amount AS PaymentAmount

FROM LoadTracOld.dbo.tblArPayments  P
INNER JOIN LoadTracOld.dbo.tblArPaymentDetails PD
ON P.PaymentId = PD.PaymentId
                      