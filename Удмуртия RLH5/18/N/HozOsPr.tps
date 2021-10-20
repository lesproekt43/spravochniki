Valuemacro  Hoz;
{  Формирует код символа 'Раскраска по хозмероприятиям.
                          Осветление и прочистки.'
   
	Вер. 2.0   © Старостенко Д.А., 2008 - 2010 год	}

   {  Имена полей БД  
	M1.HOZMER1	- 1-е хозмероприятие
	M1.HOZMER2  - 2-е хозмероприятие
	M1.PRBPOR	- преобладающая порода
	M1.CELPOR	- целевая порода        }

var
	ResultValue : string;
	Code : double;

begin
  ResultValue := '0';
  if (@M1.HOZMER1 >= 1411) and (@M1.HOZMER1 <= 1419) then  
    ResultValue := '3001'	{ Осветление }
  else if (@M1.HOZMER1 >= 1421) and (@M1.HOZMER1 <= 1429) then  
    ResultValue := '3002'	{ Прочистки }
end.


