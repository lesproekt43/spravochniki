Valuemacro  OZU2;
{  Формирует код символа 'раскраска по ОЗУ и категории защитных'}
   


var
	ResultValue : string;

begin
  ResultValue := '00';
  if ((@M1.KATZEM < 2300) or (@M1.KATZEM >= 2400)) then
	if ((@M1.OZU<>0) AND (@M1.OZU<>888)) then 
		begin
			ResultValue := 'NO_OZU';
			if (@M1.OZU=3) then ResultValue := 'NAS';
			if (@M1.OZU=18) then ResultValue := 'BER';
			if (@M1.OZU=31) then ResultValue := 'GLU';
			if (@M1.OZU=17) then ResultValue := 'OOPT';
			if (@M1.OZU=30) then ResultValue := 'BOBR';
			if (@M1.OZU=513) then ResultValue := 'BOBR';
			if (@M1.OZU=102) then ResultValue := 'PRB';
			if (@M1.OZU=120) then ResultValue := 'SCL';
			if (@M1.OZU=303) then ResultValue := 'KDR';
			if (@M1.OZU=305) then ResultValue := '70';
		end
  else if ((@M1.KATZEM>=2108) AND (@M1.KATZEM<=2117)) then ResultValue:='Voda';
end.


