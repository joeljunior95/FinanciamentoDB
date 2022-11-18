-- Populando as tabelas
INSERT [dbo].[TipoFinanciamento](descricao) VALUES ('A'), ('B'), ('C')


INSERT [dbo].[Cliente] (nome, cpf, uf, celular)
VALUES ('c0','11111111111','SP','11940028920'), -- PARC ATRASO MAIS DE 5 DIAS A CONTAR DE HOJE (x)
             ('c1','22222222222','SP','11940028921'), -- PAGOU MAIS DE 60%
             ('c2','33333333333','SP','11940028922'), -- PAGOU MAIS DE 60%
             ('c3','44444444444','RJ','22940028920'),
             ('c4','55555555555','RJ','22940028921'),
             ('c5','66666666666','RJ','22940028922'), -- PARC ATRASO MAIS DE 5 DIAS A CONTAR DE HOJE (x)
             ('c6','77777777777','MG','31940028920'),
             ('c7','88888888888','MG','31940028921'),
             ('c8','99999999999','MG','31940028922'), -- PARC ATRASO MAIS DE 5 DIAS A CONTAR DE HOJE (x)
             ('c9','00000000000','ES','27940028920'), -- PARC ATRASO MAIS DE 5 DIAS A CONTAR DE HOJE (x)
             ('c10','11111111112','SP','11940028923') -- PAGOU NADA

 
INSERT [dbo].[Financiamento] (cpf, tipo, vlTotal, dtUltVenc)
VALUES ('00000000000',1,500000,'2023-12-31'), --1 (x)
             ('00000000000',3,100000,'2023-12-31'), --2
             ('99999999999',1,100000,'2023-12-31'), --3 (x)
             ('66666666666',1,100000,'2023-12-31'), --4 (x)
             ('33333333333',1,100000,'2023-12-31'), --5 (x)
             ('22222222222',1,100000,'2023-12-31'), --6 (x)
             ('11111111111',1,100000,'2023-12-31') --7 (x)

 
INSERT [dbo].[Parcela] (idFinanciamento, NroParc, VlParc, DtVenc, DtPgo)
VALUES (1,1,1000,'2022-09-10','2022-09-11'),
             (1,2,1000,'2022-10-10','2022-10-11'),
             (1,3,1000,'2022-11-10',null),
             (3,1,1000,'2022-09-10','2022-09-11'),
             (3,2,1000,'2022-10-10','2022-10-11'),
             (3,3,1000,'2022-11-10',null),
             (4,1,1000,'2022-09-10','2022-09-11'),
             (4,2,1000,'2022-10-10','2022-10-11'),
             (4,3,1000,'2022-11-10',null),
             (7,1,1000,'2022-09-10','2022-09-11'),
             (7,2,1000,'2022-10-10','2022-10-11'),
             (7,3,1000,'2022-11-10',null),
             (5,1,1000,'2022-09-30','2022-09-11'),
             (5,2,1000,'2022-10-30','2022-10-11'),
             (5,3,1000,'2022-11-30',null),
             (6,1,1000,'2022-09-30','2022-09-11'),
             (6,2,1000,'2022-10-30','2022-10-11'),
             (6,3,1000,'2022-11-30',null),
             (2,3,1000,'2023-01-30',null)

 
      
SELECT * FROM [dbo].[Cliente] -- (x)
SELECT * FROM [dbo].[TipoFinanciamento] -- (x)
SELECT * FROM [dbo].[Financiamento] -- (x)
SELECT * FROM [dbo].[Parcela] -- (x)