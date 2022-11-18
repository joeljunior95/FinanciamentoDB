-- • Listar todos os clientes do estado de SP que possuem mais de 60% das parcelas pagas
SELECT C.*, J.ratio FROM [dbo].[Cliente] C
       JOIN [dbo].[Financiamento] F ON C.cpf = F.cpf
       JOIN (SELECT idFinanciamento, (1.0 * sum(case when DtPgo is not null then 1 else 0 end) / count(*)) as ratio FROM [dbo].[Parcela] group by idFinanciamento) J
             ON F.id = J.idFinanciamento and J.ratio > 0.6
WHERE C.uf = 'SP'