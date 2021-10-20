Valuemacro  Hoz;
{  Формирует код символа 'Раскраска по хозмероприятиям. 
                          Прореживание и проходные рубки.'
   
	Вер. 2.1   © Старостенко Д.А., 2008 - 2010 год	
		     Курагин А.В., 2010 г.		}

   {  Имена полей БД  
	M1.HOZMER1	- 1-е хозмероприятие
	M1.HOZMER2      - 2-е хозмероприятие
	M1.PRBPOR	- преобладающая порода
	M1.CELPOR	- целевая порода        }

var
	ResultValue : string;
	Code : double;

begin
  ResultValue := '0';
  if (@M1.HOZMER1 >= 1431) and (@M1.HOZMER1 <= 1439) then 
    begin { Прореживание }  
    ResultValue := '7';
    end
  else if (@M1.HOZMER1 >= 1441) and (@M1.HOZMER1 <= 1449) then 
    begin { Проходная рубка }  
    ResultValue := '5';
    end
end.


