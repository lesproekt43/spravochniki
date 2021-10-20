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
			if (@M1.OZU=103) then ResultValue := 'NAS';
			if (@M1.OZU=218) then ResultValue := 'BER';
			if (@M1.OZU=113) then ResultValue := 'GLU';
			if (@M1.OZU=33) then ResultValue := 'OOPT';
			if (@M1.OZU=133) then ResultValue := 'ZAK';
		end
  else if ((@M1.KATZEM>=2108) AND (@M1.KATZEM<=2117)) then ResultValue:='Voda';
end.


