SELECT NNN FROM Phl1.DBF O_VYD, Phl2.DBF O_POR
 WHERE (O_VYD.NNN=O_POR.NNN) AND 
 (O_VYD.PRBPOR=100100)
 AND
(O_POR.NOMPOR=1)
 AND
(O_POR.KOFSOS BETWEEN 5 AND 7)
 AND
(O_POR.VOZ<=10)
 AND
(O_POR.POL IN ('0.6', '0.7', '0.8', '0.9', '1.0'))
