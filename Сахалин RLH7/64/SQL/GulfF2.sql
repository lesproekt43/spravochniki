select CSTR(KATZAS) AS KATZAS_CHAR
         ,IIF(kz.IGP=1,TRUE,FALSE) as RGP
         ,IIF(GRPVOZ IN(6,7), TRUE,FALSE) AS SpAndPer
         ,((KATZEM Between 2501 And 2505) OR 
           (KATZEM Between 2510 And 2514) OR 
           (KATZEM Between 2517 And 2560) OR (KATZEM = 2313) OR (KATZEM = 2308) OR (KATZEM = 2320)) AS PROCHIE
          ,VOZRUB
          ,OZU
          ,PRBPOR
          ,GRPVOZ
          ,IIF(GRPVOZ IN(3,4),TRUE,FALSE) AS GRPVOZ_34
          ,KATZEM
          ,KATZAS 
          ,IIF(ISNULL(PLSVYD),0,PLSVYD)  AS LPLSVYD
          ,IIF(ISNULL(ZAPVYD),0,ZAPVYD)  AS LZAPVYD
          ,QrIGP.RGP_ZapVyd as IGP_ZAPVYD
          ,IIF(ISNULL(Pr.PrPr),0,Pr.PrPr)  AS LPrirost
          ,IIF(ISNULL(Pr.VozPr),0,Pr.VozPr)  AS LVozrast
          ,IIF(KATZAS IN(131900,120800,131800,132300,132200,132000), TRUE, FALSE) as _KL03
          ,IIF(KATZAS IN(121000,120600,121400,143000,143200,143300,121200,110100,110200), TRUE, FALSE) as _KL04
from ((Phl1  left join (@KatZasch@) kz on Phl1.KATZAS=kz.KL)
                  left join (select b.NNN AS NNNPr,
                                         SUM((b.ZAP*a.PLSVYD)/b.VOZ) AS PrPr,
                                         SUM(b.VOZ*a.PLSVYD) AS VozPr
                                from Phl1 AS a inner join Phl2 AS b on a.NNN = b.NNN
                                where b.NOMPOR=1 AND b.ZAP>0 AND b.VOZ>0
                                group by b.NNN 
                                ) AS Pr on Phl1.NNN = Pr.NNNPr)
                  left join( select
                               NNN
                              ,SUM(IIF(YAR=1,ZAP,0)) AS Z1
                              ,SUM(ZAP) AS ZA
                              ,IIF(NEY=1,Z1,ZA) as RGP_ZapGa
                              ,SUM(IIF(YAR=1,ZAP*PLSVYD,0)) AS ZV1
                              ,SUM(ZAP*PLSVYD) AS ZVA
                              ,IIF(NEY=1,ZV1,ZVA) as RGP_ZapVyd
                             from (~RGP_ZapVyd_Phl1-Phl2~) q1
                             where (YAR<>9)
                             group by NNN, NEY) as QrIGP on Phl1.NNN=QrIGP.NNN                  
where (111=111)                  
                                
         

