Valuemacro  landshaft;
{  Формирует код символа 'Раскраска по устойчивости насаждения'}
var
	ResultValue : string;
	Code : longint;
	idx : longint;
	
begin
  ResultValue := ' ';
  
  for idx := 1 to Num(@M3.MAKET) do 
    if @M3.[idx]MAKET = 21 then 
      begin
      Code := @M3.[idx]N4;
      ResultValue := Code:C; 
      end
end.


