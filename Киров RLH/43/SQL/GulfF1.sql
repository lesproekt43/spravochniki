select p1.* 
          ,CSTR(KATZAS) AS KATZAS_CHAR
          ,IIF(kz.IGP=1,TRUE,FALSE) as RGP
          ,IIF(ISNULL(PLSVYD),0,PLSVYD)  AS LPLSVYD
          ,((KATZEM Between 2500 And 2505) OR (KATZEM Between 2510 And 2514) OR (KATZEM Between 2517 And 2560) OR (KATZEM = 2313) OR (KATZEM = 2308) OR (KATZEM = 2309) OR (KATZEM = 2320)) AS PROCHIE
          ,IIF(KATZAS IN(131900,120800,131800,132300,132200,132000), TRUE, FALSE) as _KL03
          ,IIF(KATZAS IN(121000,120600,121400,143000,143200,143300,121200,110100,110200), TRUE, FALSE) as _KL04
from Phl1 p1 left join (@KatZasch@) kz on p1.KATZAS=kz.KL
where (111=111)
