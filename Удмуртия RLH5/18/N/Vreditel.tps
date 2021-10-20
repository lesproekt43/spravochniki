Valuemacro  vreditel;
{  ‘ормирует код дл€ тематической карты "повреждени€"}

var 
ResultValue : string; 
i,code : longint; 
Makets, Codes1, Codes4 : list of longint; 

begin 
ResultValue := '00'; 
Makets := @M3.MAKET;
Codes1 := @M3.N1;
Codes4 := @M3.N4; 
for i := 1 to Num( Makets ) do 
	if (Makets[i] = 12) then 
		begin 
		ResultValue := '??';
		if (Codes1[i]=1) OR (Codes1[i]=2) OR (Codes1[i]=3) OR (Codes1[i]=28) then ResultValue := 'POZH' else
		if (Codes1[i]=4) then ResultValue := 'VETR' else
		if (Codes1[i]=11) then
			if (Codes4[i]=4)  then ResultValue := 'B_G' else
			if (Codes4[i]=5)  then ResultValue := 'E_G' else
			if (Codes4[i]=6)  then ResultValue := 'R_S' else
			if (Codes4[i]=7)  then ResultValue := 'L_T' else
			if (Codes4[i]=8)  then ResultValue := 'N_T' else
			if (Codes4[i]=55) then ResultValue := 'S_G' else
			if (Codes4[i]=56) then ResultValue := 'K_G'
		end 
end. 

