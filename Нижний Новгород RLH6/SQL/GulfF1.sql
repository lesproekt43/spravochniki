select p1.* 
          ,CSTR(KATZAS) AS KATZAS_CHAR
          ,IIF(kz.IGP=1,TRUE,FALSE) as RGP
          ,IIF(ISNULL(PLSVYD),0,PLSVYD)  AS LPLSVYD
          ,((KATZEM Between 2539 And 2555) OR (KATZEM = 2100) OR (KATZEM = 2320) OR (KATZEM = 2330) OR (KATZEM = 2501)) AS PROCHIE
          ,IIF(KATZAS IN(131900,120800,131800,132300,132200,132000), TRUE, FALSE) as _KL03
          ,IIF(KATZAS IN(121000,120600,121400,143000,143200,143300,121200,110100,110200), TRUE, FALSE) as _KL04
from Phl1 p1 left join (@KatZasch@) kz on p1.KATZAS=kz.KL
where (111=111)
