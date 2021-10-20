Valuemacro  HozSan;
{  Формирует код символа 'Раскраска по хозмероприятиям.
                          Санитарные рубки.'
   
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
  if (@M1.HOZMER1 = 1605) then  
    ResultValue := '6001'	{ Выборочная сан. рубка }
  else if (@M1.HOZMER1 = 1601) then  
    ResultValue := '6002'	{ Сплошная сан. рубка }
  else if ((@M1.HOZMER1 = 1621) or (@M1.HOZMER1 = 1622))then  
    ResultValue := '6010'	{ Сплошная сан. рубка }
end.


