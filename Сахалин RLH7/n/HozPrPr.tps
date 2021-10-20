Valuemacro  Hoz;
{  Формирует код символа 'Раскраска по хозмероприятиям. 
                          Прореживание и проходные рубки.'
   
	Вер. 2.0   © Старостенко Д.А., 2008 - 2010 год	}

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
  Code := Trunc(@M1!PRBPOR/100);  {  Преобладающая порода  }
  if (Code = 3041) and (@M1!PRBPOR = 304110) then
    Code := 3091; {ольха черная}  
  if (@M1.HOZMER1 >= 1431) and (@M1.HOZMER1 <= 1439) then 
    begin { Прореживание }  
    ResultValue := Code:C:4:0 + '7';
    end
  else if (@M1.HOZMER1 >= 1441) and (@M1.HOZMER1 <= 1449) then 
    begin { Проходная рубка }  
    ResultValue := Code:C:4:0 + '5';
    end
end.


