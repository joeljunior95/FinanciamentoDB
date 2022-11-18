-- • Listar os primeiros quatro clientes que possuem alguma parcela com mais de cinco dias
-- em atraso
SELECT TOP 4 C.* FROM [dbo].[Cliente] C
       JOIN [dbo].[Financiamento] F ON C.cpf = F.cpf
       JOIN ( SELECT idFinanciamento FROM [dbo].[Parcela]
                    WHERE DtPgo is Null and DATEADD(DAY, 5, DtVenc) <= CONVERT(date, GETDATE())
                    group by idFinanciamento) J
             ON F.id = J.idFinanciamento