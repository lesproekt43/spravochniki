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
		end
  else if ((@M1.KATZEM>=2108) AND (@M1.KATZEM<=2117)) then ResultValue:='Voda';
end.


