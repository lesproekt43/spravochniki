Valuemacro  Hoz;
{  Формирует код символа 'Раскраска по хозмероприятиям',
   
	Вер. 1.5   © Старостенко Д.А., 2008 - 2009 год	}

   {  Имена полей БД  
	M1.HOZMER1	- 1-е хозмероприятие
	M1.HOZMER2  - 2-е хозмероприятие
	M1.PRBPOR	- преобладающая порода
	M1.CELPOR	- целевая порода        }

var
	ResultValue : string;
	Code : double;

begin
  ResultValue := ' ';
  Code := Trunc(@M1!PRBPOR/100);  {  Преобладающая порода  }
  if (Code = 3041) and (@M1!PRBPOR = 304110) then
    Code := 3091; {ольха черная}  
  if (@M1.HOZMER1 >= 1411) and (@M1.HOZMER1 <= 1419) then  
    ResultValue := '3001'	{ Осветление }
  else if (@M1.HOZMER1 >= 1421) and (@M1.HOZMER1 <= 1429) then  
    ResultValue := '3002'	{ Прочистки }
  else if (@M1.HOZMER1 >= 1431) and (@M1.HOZMER1 <= 1439) then 
    begin { Прореживание }  
    ResultValue := Code:C:4:0 + '7';
    end
  else if (@M1.HOZMER1 >= 1441) and (@M1.HOZMER1 <= 1449) then 
    begin { Проходная рубка }  
    ResultValue := Code:C:4:0 + '5';
    end
  else if (@M1.HOZMER1 = 1605) then  
    ResultValue := '3006'	{ Выборочная сан. рубка }
  else if (@M1.HOZMER1 = 1601) then  
    ResultValue := '3007'	{ Сплошная сан. рубка }
  else if (@M1.HOZMER1 >= 1222) and (@M1.HOZMER1 <= 1265) then  
    begin	{ Выборочная рубка спелых }
    ResultValue := Code:C:4:0 + '6';
    end
  else if (@M1.HOZMER1 >= 1211) and (@M1.HOZMER1 <= 1219) then
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
    else if (@M1.HOZMER2 = 3266) then
      ResultValue := '3009'; { сохранение подроста }     
end.


