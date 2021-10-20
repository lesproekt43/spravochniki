Valuemacro  Hoz;
{  Формирует код символа 'Раскраска по хозмероприятиям.
                          Лесовосстановление.'
   
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
  if (@M1.HOZMER1 >= 1211) and (@M1.HOZMER1 <= 1219) then
    begin { Сплошная рубка }
	  { Сплошные рубки - лесовосстановление }
    if (@M1.HOZMER2 >= 3211) and (@M1.HOZMER2 <= 3261) then
      ResultValue := Code:C:4:0 + '3'  { создание культур }
    else if (@M1.HOZMER2 = 3266) then
      ResultValue := Code:C:4:0 + '1'  { сохранение подроста }
    else if (@M1.HOZMER2 = 3271) then
      ResultValue := Code:C:4:0 + '2'  { минерализация }
    else if (@M1.HOZMER2 = 3276) then
      ResultValue := Code:C:4:0 + '4'  { комбинир. лесовосст. }
    end 
  else
    { Лесовосстановление в первом мероприятии }
    if (@M1.HOZMER1 >= 3211) and (@M1.HOZMER1 <= 3261) then
      ResultValue := '3008'  { создание культур }
    else if  (@M1.HOZMER1 = 3266) then
      ResultValue := '3009' { сохранение подроста }     
    else if (@M1.HOZMER1 = 3271) then
      ResultValue :='3007'  { минерализация }
    else if (@M1.HOZMER1 = 3276) then
      ResultValue := '3006'  { комбинир. лесовосст. }
    end.