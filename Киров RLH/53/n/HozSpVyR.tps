Valuemacro  Hoz;
{  Формирует код символа 'Раскраска по хозмероприятиям.
                          Сплошные и выборочные рубки главного пользования.'
   
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
  if (@M1.HOZMER1 >= 1222) and (@M1.HOZMER1 <= 1265) then  
    begin	{ Выборочная рубка спелых }
    ResultValue := Code:C:4:0 + '6';
    end
  else if (@M1.HOZMER1 >= 1211) and (@M1.HOZMER1 <= 1219) then
    begin { Сплошная рубка }
      ResultValue := Code:C:4:0 + '4'  { комбинир. лесовосст. }
    end 
end.


