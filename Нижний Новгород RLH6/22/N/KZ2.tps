Valuemacro  KZ2;
{  ��������� ��� ������� '��������� �� ��� � ��������� ��������'}
   


var
	ResultValue : string;

begin
  ResultValue := '00';
  if ((@M1.KATZEM < 2300) or (@M1.KATZEM >= 2400)) then ResultValue := @M1.KATZAS;
  if ((@M1.KATZEM>=2108) AND (@M1.KATZEM<=2117)) then ResultValue:='Voda';
end.


