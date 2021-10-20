Valuemacro  LET10;
{  Формирует код символа 'раскраска по годам рубки'}
   



var
	ResultValue : string;

begin
  ResultValue := '00';
  if (@M3.MAKET = 33) then  
    begin
	if (@M3.N1=2) then ResultValue := '99';
	if (@M3.N1=1) then
		begin
			if (@M3.N2=2012) then ResultValue := '01';	
			if (@M3.N2=2013) then ResultValue := '02';	
			if (@M3.N2=2014) then ResultValue := '03';	
			if (@M3.N2=2015) then ResultValue := '04';	
			if (@M3.N2=2016) then ResultValue := '05';	
			if (@M3.N2=2017) then ResultValue := '06';	
			if (@M3.N2=2018) then ResultValue := '07';	
			if (@M3.N2=2019) then ResultValue := '08';	
			if (@M3.N2=2020) then ResultValue := '09';	
			if (@M3.N2=2021) then ResultValue := '10'	
		end
    end
end.


